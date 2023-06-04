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

    Utilisation : names $ reverse $ parse $ lexer "code"
-}
module Name (names) where
import Lexer
import Parser
import Data.Maybe (isNothing)
import Utils

-- /!\ names will receive a table from parse that must be reversed first
names :: [Instr] -> [String]
names [] = []
names instrs = unpack $ names' instrs [] []
    where
        names' :: [Instr] -> [String] -> [(String, Int)] -> [Maybe String]
        names' [] _ _ = []
        names' (i:instructions) variables functions = case i of
            Cnst t name expr -> let n = checkName name variables in 
                n : checkExpr expr variables functions ++ names' instructions (if isNothing n then name : variables else variables) functions
            Fct t params name expr -> let f = checkFunction name params functions in 
                --Functions can have shadowing
                f ++ checkExpr expr (variables ++ if all isNothing f then parametersToString params else []) functions ++ names' instructions variables (if all isNothing f then (name, length params) : functions else functions)
            WildExpr expr -> checkExpr expr variables functions ++ names' instructions variables functions
            EmptyLine -> names' instructions variables functions

checkName :: String -> [String] -> Maybe String
checkName _ [] = Nothing
checkName name variables 
    | name `elem` variables = Just $ name ++ " has already been declared as a variable"
    | otherwise = Nothing

checkFunction :: String -> [Parameter] -> [(String, Int)] -> [Maybe String]
checkFunction _ parameters [] = [Nothing, checkParameters parameters]
checkFunction name parameters functions
    | isElem name functions = [Just $ name ++ " has already been declared as a function", checkParameters parameters]
    | otherwise = [Nothing, checkParameters parameters]

checkParameters :: [Parameter] -> Maybe String
checkParameters parameters
    | null parameters = Just "A function must be given at least 1 parameter"
    | length parameters < 2 = Nothing
    | otherwise = if allUnique $ parametersToString parameters then Nothing else Just "Function parameters must have unique names"

parametersToString :: [Parameter] -> [String]
parametersToString [] = []
parametersToString (Param t name:parameters) = name : parametersToString parameters

getNumArguments :: String -> [(String, Int)] -> Int
getNumArguments _ [] = -1
getNumArguments name functions = if isElem name functions then findNum functions else -1
    where
        findNum (f:fs) = if fst f == name then snd f else findNum fs

checkExpr :: Expr -> [String] -> [(String, Int)] -> [Maybe String]
checkExpr expression variables functions = case expression of
    If expression1 expression2 -> checkAll [expression1, expression2]
    IfElse expression1 expression2 expression3 -> checkAll [expression1, expression2, expression3]
    --Handles can have shadowing
    Handle parameter handles -> checkHandleParameter parameter : checkHandles parameter handles
    Equal expression1 expression2 -> checkAll [expression1, expression2]
    NotEqual expression1 expression2 -> checkAll [expression1, expression2]
    BelowEqual expression1 expression2 -> checkAll [expression1, expression2]
    AboveEqual expression1 expression2 -> checkAll [expression1, expression2]
    Below expression1 expression2 -> checkAll [expression1, expression2]
    Above expression1 expression2 -> checkAll [expression1, expression2]
    And expression1 expression2 -> checkAll [expression1, expression2]
    Or expression1 expression2 -> checkAll [expression1, expression2]
    Plus expression1 expression2 -> checkAll [expression1, expression2]
    Sub expression1 expression2 -> checkAll [expression1, expression2]
    Mult expression1 expression2 -> checkAll [expression1, expression2]
    Div expression1 expression2 -> checkAll [expression1, expression2]
    Rest expression1 expression2 -> checkAll [expression1, expression2]
    Not expression -> checkOne expression
    Neg expression -> checkOne expression
    Integer _ -> [Nothing]
    Boolean _ -> [Nothing]
    Symbol name -> if name `elem` variables then [Nothing] else [Just $ name ++ " has not been declared as a variable yet"]
    FSymbol name arguments -> if isElem name functions then Nothing : checkArgs name arguments else [Just $ name ++ " has not been declared as a function yet"]
    Parent expression -> checkOne expression
    Tuple expressions -> checkAll expressions
    Trivial -> [Just "Trivial can only be used as a handler"]
    where
        checkOne expression = checkExpr expression variables functions
        checkTwo expression1 expression2 = checkAll [expression1, expression2]
        checkAll [] = []
        checkAll (expression:expressions) = checkOne expression ++ checkAll expressions
        checkHandleParameter parameter = case parameter of
            Trivial -> Just "Trivial can't be used as a handle parameter"
            _ -> Nothing
        checkHandles _ [] = [Just "Handle is empty which is illegal"]
        checkHandles parameter (handle:handles) = case handle of
            --TO-DO: vérifier les expressions et passer les variables déclarées pour le check d'expression
            Case expressions expression -> checkAll expressions ++ checkExpr expression variables functions ++ checkHandles parameter handles
            Empty -> Nothing : checkHandles parameter handles
        checkArgs name arguments = if length arguments == getNumArguments name functions then Nothing : checkAll arguments else Just ("Function " ++ name ++ " must be given " ++ show (getNumArguments name functions) ++ " arguments") : checkAll arguments