{-
    Auteurs : Rui Manuel Mota Carneiro & Ylli Fazlija

    Il reste des TO-DO car :
    Je me suis rendu compte que mes structures retournées par le parser ne conviennent pas à faire ce dont j'ai besoin
    pour faire type.hs et également en partie name.hs, si j'avais su ce que j'aurais à faire par la suite (name, type, etc...)
    j'aurais probablement pu créer une structure plus adéquate qui m'aurait permis d'écrire ici des fonctions plus efficaces,
    bien plus courtes et avec moins de répétition de code, certes je pourrais m'acharner et continuer à coder toute la journée
    pour faire en sorte que cela fonctionne avec ma structure actuelle mais ce code est déjà assez horrible et j'ai envie de
    profiter un minimum de mon week-end.
    Je pense qu'il est nécessaire de bien faire comprendre aux élèves ce qu'ils vont devoir faire au court de tous ces labos (5 à 7)
    afin qu'ils préparent bien leurs structures dés le 5ème labo. Le gros problème actuel est que je rencontre des problèmes dû au
    labo précèdent qui me donnent envie de modifier mes structures créées dans le parser.

    Bonne correction (PS: Ce message est également présent dans type.hs, c'est exactement le même)

    Utilisation : types $ reverse $ parse $ lexer "code"
    types appelle names avant de faire quoi que ce soit donc pas besoin d'appeler names avant types

    Problème connu restant : If bool_expr expr1 otherwise expr2,
        expr1 et expr2 n'ont pas besoin d'être du même type pour une raison que je ne comprends pas
-}
module Types (types) where
import Lexer
import Parser
import Name
import Utils
import Data.Maybe (isNothing, fromMaybe)

types :: [Instr] -> [String]
types [] = []
types instrs = let n = names instrs in if null n then unpack $ types' instrs [] [] else n
    where
        types' :: [Instr] -> [(String, Type)] -> [(String, Type, [Type])] -> [Maybe String]
        types' [] _ _ = []
        types' (i:instructions) variables functions = case i of
            Cnst t name expr -> case t of
                IntT -> let v = intCheck expr name variables functions in
                    v ++ types' instructions (if all isNothing v then (name, IntT) : variables else variables) functions
                BoolT -> let v = boolCheck expr name variables functions in
                    v ++ types' instructions (if all isNothing v then (name, BoolT) : variables else variables) functions
                TupleT types -> let v = tupleCheck types expr name variables functions in
                    v ++ types' instructions (if all isNothing v then (name, TupleT types) : variables else variables) functions
            Fct t parameters name expr -> case t of
                IntT -> let f = intCheck expr name variables functions in
                    f ++ types' instructions variables (if all isNothing f then (name, IntT, parametersToType parameters) : functions else functions)
                BoolT -> let f = boolCheck expr name variables functions in
                    f ++ types' instructions variables (if all isNothing f then (name, BoolT, parametersToType parameters) : functions else functions)
                TupleT typs -> let f = tupleCheck typs expr name variables functions in
                    f ++ types' instructions variables (if all isNothing f then (name, TupleT typs, parametersToType parameters) : functions else functions)
            WildExpr expr -> wildCheck expr "Wild Expression" variables functions ++ types' instructions variables functions--TO-DO
            EmptyLine -> types' instructions variables functions

parametersToType :: [Parameter] -> [Type]
parametersToType [] = []
parametersToType (p:params) = case p of
    Param t name -> t : parametersToType params

errorMsg :: String -> String -> String
errorMsg statement problem = statement ++ " : " ++ problem

instance Eq Type where
    (==) IntT IntT = True
    (==) BoolT BoolT = True
    (==) (TupleT ts1) (TupleT ts2) = ts1 == ts2
    (==) _ _ = False

isVarType :: String -> Type -> [(String, Type)] -> Bool
isVarType _ _ [] = False
isVarType name t (e:elems) = (name == fst e && snd e == t) || isVarType name t elems

existsVar :: String -> [(String, Type)] -> Bool
existsVar _ [] = False
existsVar name (e:elems) = (name == fst e) || existsVar name elems

getVarType :: String -> [(String, Type)] -> Type
getVarType name (e:elems) = if name == fst e then snd e else getVarType name elems

isFctType :: String -> Type -> [(String, Type, [Type])] -> Bool
isFctType _ _ [] = False
isFctType name t (e:elems) = (name == getFst e && getSnd e == t) || isFctType name t elems

existsFct :: String -> [(String, Type, [Type])] -> Bool
existsFct _ [] = False
existsFct name (e:elems) = (name == getFst e) || existsFct name elems

getFctType :: String -> [(String, Type, [Type])] -> Type
getFctType name (e:elems) = if name == getFst e then getSnd e else getFctType name elems

getFctParamTypes :: String -> [(String, Type, [Type])] -> [Type]
getFctParamTypes name (e:elems) = if name == getFst e then getTrd e else getFctParamTypes name elems

getFst :: (String, a, b) -> String
getFst (fst, _, _) = fst

getSnd :: (String, a, b) -> a
getSnd (_, snd, _) = snd

getTrd :: (String, a, b) -> b
getTrd (_, _, trd) = trd


checkExprs :: [Type] -> [Expr] -> String -> [(String, Type)] -> [(String, Type, [Type])] -> [Maybe String]
checkExprs [] [] _ _ _ = []
checkExprs (t:ts) (e:exprs) stm vs fs
    | length ts /= length exprs = [Just $ errorMsg stm "Number of arguments doesn't match"]
    | otherwise = case t of
        IntT -> intCheck e (stm ++ "->int") vs fs ++ checkExprs ts exprs stm vs fs
        BoolT -> boolCheck e (stm ++ "->bool") vs fs ++ checkExprs ts exprs stm vs fs
        TupleT typs -> tupleCheck typs e (stm ++ "->tuple") vs fs ++ checkExprs ts exprs stm vs fs

checkExprType :: Expr -> [(String, Type)] -> [(String, Type, [Type])] -> Maybe Type
checkExprType expression vs fs = case expression of
    If _ e -> checkExprType e vs fs
    IfElse _ e _ -> checkExprType e vs fs
    --TO-DO Handle _ handles
    Equal _ _ -> Just BoolT
    NotEqual _ _ -> Just BoolT
    BelowEqual _ _ -> Just BoolT
    AboveEqual _ _ -> Just BoolT
    Below _ _ -> Just BoolT
    Above _ _ -> Just BoolT
    And _ _ -> Just BoolT
    Or _ _ -> Just BoolT
    Plus _ _ -> Just IntT
    Sub _ _ -> Just IntT
    Mult _ _ -> Just IntT
    Div _ _ -> Just IntT
    Rest _ _ -> Just IntT
    Not _ -> Just BoolT
    Neg _ -> Just IntT
    Integer _ -> Just IntT
    Boolean _ -> Just BoolT
    Symbol v -> if existsVar v vs then Just $ getVarType v vs else Nothing
    FSymbol v _ -> if existsFct v fs then Just $ getFctType v fs else Nothing
    Parent e -> checkExprType e vs fs
    Tuple es -> Just $ TupleT (map (\x -> fromMaybe IntT (checkExprType x vs fs)) es)--We just put IntT in case of problem, we'll re-find the problem later when checking that it's a int and tell the user, not good practice but structure is problematic
    _ -> Nothing

intCheck :: Expr -> String -> [(String, Type)] -> [(String, Type, [Type])] -> [Maybe String]
intCheck expression stm vs fs = case expression of
    If be ie -> boolCheck be (stm ++ "->Cond") vs fs ++ intCheck ie (stm ++ "->If") vs fs
    IfElse be ie1 ie2 -> boolCheck be (stm ++ "->Cond") vs fs ++ intCheck ie1 (stm ++ "->If") vs fs ++ intCheck ie2 (stm ++ "->Else") vs fs
    Handle e handles -> []--TO-DO
    Plus ie1 ie2 -> intCheck ie1 (stm ++ "->AddL") vs fs ++ intCheck ie2 (stm ++ "->AddR") vs fs
    Sub ie1 ie2 -> intCheck ie1 (stm ++ "->SubL") vs fs ++ intCheck ie2 (stm ++ "->SubR") vs fs
    Mult ie1 ie2 -> intCheck ie1 (stm ++ "->MultL") vs fs ++ intCheck ie2 (stm ++ "->MultR") vs fs
    Div ie1 ie2 -> intCheck ie1 (stm ++ "->DivL") vs fs ++ intCheck ie2 (stm ++ "->DivR") vs fs
    Rest ie1 ie2 -> intCheck ie1 (stm ++ "->ModL") vs fs ++ intCheck ie2 (stm ++ "->ModR") vs fs
    Neg ie -> intCheck ie (stm ++ "->Neg") vs fs
    Integer _ -> [Nothing]
    Symbol iv -> if isVarType iv IntT vs then [Nothing] else [Just $ errorMsg stm iv ++ " isn't Integer"]
    FSymbol iv params -> if isFctType iv IntT fs then checkExprs (getFctParamTypes iv fs) params (stm ++ "->Params") vs fs else [Just $ errorMsg stm iv ++ " isn't Integer"]
    Parent ie -> intCheck ie (stm ++ "->()") vs fs
    _ -> [Just $ errorMsg stm "Expression must be integer"]

boolCheck :: Expr -> String -> [(String, Type)] -> [(String, Type, [Type])] -> [Maybe String]
boolCheck expression stm vs fs = case expression of
    If be1 be2 -> boolCheck be1 (stm ++ "->Cond") vs fs ++ boolCheck be2 (stm ++ "->If") vs fs
    IfElse be1 be2 be3 -> boolCheck be1 (stm ++ "->Cond") vs fs ++ boolCheck be2 (stm ++ "->If") vs fs ++ boolCheck be2 (stm ++ "->Else") vs fs
    Handle e handles -> []--TO-DO
    Equal e1 e2 -> case checkExprType e1 vs fs of
        Just IntT -> intCheck e1 (stm ++ "->EqL") vs fs ++ intCheck e2 (stm ++ "->EqR") vs fs
        Just BoolT -> boolCheck e1 (stm ++ "->EqL") vs fs ++ boolCheck e2 (stm ++ "->EqR") vs fs
        Just (TupleT typs) -> tupleCheck typs e1 (stm ++ "->EqL") vs fs ++ tupleCheck typs e2 (stm ++ "->EqR") vs fs
        Nothing -> problemCheck e1 (stm ++ "->EqL") vs fs ++ problemCheck e2 (stm ++ "->EqR") vs fs
    NotEqual e1 e2 -> []--TO-DO
    BelowEqual ie1 ie2 -> intCheck ie1 (stm ++ "->bEqL") vs fs ++ intCheck ie2 (stm ++ "->bEqR") vs fs
    AboveEqual ie1 ie2 -> intCheck ie1 (stm ++ "->aEqL") vs fs ++ intCheck ie2 (stm ++ "->aEqR") vs fs
    Below ie1 ie2 -> intCheck ie1 (stm ++ "->BelowL") vs fs ++ intCheck ie2 (stm ++ "->BelowR") vs fs
    Above ie1 ie2 -> intCheck ie1 (stm ++ "->AboveL") vs fs ++ intCheck ie2 (stm ++ "->AboveR") vs fs
    And be1 be2 -> boolCheck be1 (stm ++ "->AndL") vs fs ++ boolCheck be2 (stm ++ "->AndR") vs fs
    Or be1 be2 -> boolCheck be1 (stm ++ "->OrL") vs fs ++ boolCheck be2 (stm ++ "->OrR") vs fs
    Not be -> boolCheck be (stm ++ "->Not") vs fs
    Boolean _ -> [Nothing]
    Symbol bv -> if isVarType bv BoolT vs then [Nothing] else [Just $ errorMsg stm bv ++ " isn't Boolean"]
    FSymbol bv params -> if isFctType bv BoolT fs then checkExprs (getFctParamTypes bv fs) params (stm ++ "->Params") vs fs else [Just $ errorMsg stm bv ++ " isn't Boolean"]
    Parent be -> boolCheck be (stm ++ "->()") vs fs
    _ -> [Just $ errorMsg stm "Expression must be boolean"]

tupleCheck :: [Type] -> Expr -> String -> [(String, Type)] -> [(String, Type, [Type])] -> [Maybe String]
tupleCheck ts expression stm vs fs = case expression of
    If be te -> boolCheck be (stm ++ "->Cond") vs fs ++ tupleCheck ts te (stm ++ "->If") vs fs
    IfElse be te1 te2 -> boolCheck be (stm ++ "->Cond") vs fs ++ tupleCheck ts te1 (stm ++ "->If") vs fs ++ tupleCheck ts te2 (stm ++ "->Else") vs fs
    Handle e handles -> []--TO-DO
    Symbol tv -> if isVarType tv (TupleT ts) vs then [Nothing] else [Just $ tv ++ " isn't an adequate Tuple"]
    FSymbol tv params -> if isFctType tv (TupleT ts) fs then checkExprs (getFctParamTypes tv fs) params (stm ++ "->Params") vs fs else [Just $ tv ++ " isn't an adequate Tuple"]
    Parent te -> tupleCheck ts te (stm ++ "->()") vs fs
    Tuple tes -> checkExprs ts tes (stm ++ "->(_,_)") vs fs
    _ -> [Just $ errorMsg stm "Expression must be tuple"]

wildCheck :: Expr -> String -> [(String, Type)] -> [(String, Type, [Type])] -> [Maybe String]
wildCheck expression stm vs fs = case expression of
    Handle e handles -> []--TO-DO
    Integer _ -> [Nothing]
    Boolean _ -> [Nothing]
    Symbol v -> if existsVar v vs then [Nothing] else [Just $ errorMsg stm v ++ " isn't declared"]
    FSymbol v params -> if existsFct v fs then checkExprs (getFctParamTypes v fs) params (stm ++ "->Params") vs fs else [Just $ errorMsg stm v ++ " isn't declared"]
    Parent we -> wildCheck we (stm ++ "->()") vs fs
    Tuple wes -> concatMap (\x -> wildCheck x (stm ++ "->()") vs fs) wes 
    _ -> case checkExprType expression vs fs of
        Just IntT -> intCheck expression stm vs fs
        Just BoolT -> boolCheck expression stm vs fs
        Just (TupleT typs) -> tupleCheck typs expression stm vs fs
        Nothing -> problemCheck expression stm vs fs

problemCheck :: Expr -> String -> [(String, Type)] -> [(String, Type, [Type])] -> [Maybe String]
problemCheck expression stm vs fs = case expression of
    Trivial -> [Just $ errorMsg stm "trivial can't be used outside of handle"]
    Symbol v -> if existsVar v vs then [Nothing] else [Just $ errorMsg stm v ++ " isn't declared"]
    FSymbol v params -> if existsFct v fs then checkExprs (getFctParamTypes v fs) params (stm ++ "->Params") vs fs else [Just $ errorMsg stm v ++ "isn't declared"]
    _ -> [Nothing]