{
{-
  Auteurs : Rui Manuel Mota Carneiro & Ylli Fazlija
-}
module Parser where
import Lexer
}

%name parse
%tokentype { Token }
%error { parseError }

-- RULES OF PARSER
%token
-- BOOLEANS
    True                            { TTrue }
    False                           { TFalse }

-- TYPES
    int                             { TInt }
    bool                            { TBool }

-- KEYWORDS
    func                            { TFunc }
    handle                          { THandle }
    trivial                         { TTrivial }
    if                              { TIf }
    otherwise                       { TOtherwise }
    fixed                           { TFixed }
    ident                           { TIdent $$ }
    num                             { TNum $$ }

-- SYMBOLS
    "\n"                            { TInstrEnd }
    "("                             { TParL }
    ")"                             { TParR }
    "{"                             { TBL }
    "}"                             { TBR }
    ","                             { TComma }
    "=>"                            { TArrow } -- Utilisé dans le handle
    "="                             { TOp "=" }
    "=/="                           { TOp "=/=" }
    "<="                            { TOp "<=" }
    ">="                            { TOp ">=" }
    "&"                             { TOp "&" }
    "|"                             { TOp "|" }
    "+"                             { TOp "+" }
    "-"                             { TOp "-" }
    "*"                             { TOp "*" }
    "/"                             { TOp "/" }
    "%"                             { TOp "%" }
    "!"                             { TOp "!" }
    "<"                             { TOp "<" }
    ">"                             { TOp ">" }

%left "|"
%left "&"
%nonassoc "=" "=/="
%nonassoc ">" "<" ">=" "<="
%left "+" "-"
%left "*" "/" "%"
%right "!"
%%

Instrs
    : Instrs "\n" Instr                                 { $3 : $1 }
    | Instr                                             { [$1] }

Instr
    : fixed Type ident Expr                             { Cnst $2 $3 $4 }
    | Type func "(" Parameters ")" ident Expr           { Fct $1 (reverse $4) $6 $7 }
    | Expr                                              { WildExpr $1 }
    | {- empty -}                                       { EmptyLine }

Type            
    : int                                               { IntT }
    | bool                                              { BoolT }
    | "(" Types ")"                                     { TupleT (reverse $2) }

Types           
    : Types "," Type                                    { $3 : $1 }
    | Type                                              { [$1] }

Parameters            
    : Parameters "," Parameter                          { $3 : $1 }
    | Parameter                                         { [$1] }

Parameter           
    : Type ident                                        { Param $1 $2 }

Expr            
    : if "(" Expr ")" Expr                              { If $3 $5 }
    | if "(" Expr ")" Expr otherwise Expr               { IfElse $3 $5 $7 }
    | handle "(" Expr ")" "{" Handlers "}"              { Handle $3 (reverse $6) }
    | Expr "=" Expr                                     { Equal $1 $3 }
    | Expr "=/=" Expr                                   { NotEqual $1 $3 }
    | Expr "<=" Expr                                    { BelowEqual $1 $3 }
    | Expr ">=" Expr                                    { AboveEqual $1 $3 }
    | Expr "<" Expr                                     { Below $1 $3 }
    | Expr ">" Expr                                     { Above $1 $3 }
    | Expr "&" Expr                                     { And $1 $3 }
    | Expr "|" Expr                                     { Or $1 $3 }
    | Expr "+" Expr                                     { Plus $1 $3 }
    | Expr "-" Expr                                     { Sub $1 $3 }
    | Expr "*" Expr                                     { Mult $1 $3 }
    | Expr "/" Expr                                     { Div $1 $3 }
    | Expr "%" Expr                                     { Rest $1 $3 }
    | "!" Expr                                          { Not $2 }
    | "-" Expr                                          { Neg $2 }
    | num                                               { Integer $1 }
    | True                                              { Boolean True }
    | False                                             { Boolean False }
    | ident                                             { Symbol $1 }
    | ident "(" Args ")"                                { FSymbol $1 (reverse $3) }
    | "(" Expr ")"                                      { Parent $2 }
    | "(" Tuple ")"                                     { Tuple (reverse $2) }
    | trivial                                           { Trivial }

Handlers            
    : Handlers "\n" Handler                             { $3 : $1 }
    | Handler                                           { [$1] }

Handler           
    : Handles "=>" Expr                                 { Case (reverse $1) $3 }
    | {- empty -}                                       { Empty }

Handles           
    : Handles "," Expr                                  { $3 : $1 }
    | Expr                                              { [$1] }

Args            
    : Args "," Expr                                     { $3 : $1 }
    | Expr                                              { [$1] }

Tuple
    : Tuple "," Expr                                    { $3 : $1 }
    | Expr                                              { [$1] }

{

parseError :: [Token] -> a
parseError _ = error "Parse error"

data Instr
    = Cnst Type String Expr
    | Fct Type [Parameter] String Expr
    | WildExpr Expr
    | EmptyLine
  deriving Show

data Expr
    = If Expr Expr
    | IfElse Expr Expr Expr
    | Handle Expr [Handler]
    | Equal Expr Expr
    | NotEqual Expr Expr
    | BelowEqual Expr Expr
    | AboveEqual Expr Expr
    | Below Expr Expr
    | Above Expr Expr
    | And Expr Expr
    | Or Expr Expr
    | Plus Expr Expr
    | Sub Expr Expr
    | Mult Expr Expr
    | Div Expr Expr
    | Rest Expr Expr
    | Not Expr
    | Neg Expr
    | Integer Int
    | Boolean Bool
    | Symbol String
    | FSymbol String [Expr]
    | Parent Expr
    | Tuple [Expr]
    | Trivial
  deriving Show

data Handler
    = Case [Expr] Expr
    | Empty
  deriving Show

data Type
    = IntT
    | BoolT
    | TupleT [Type]
  deriving Show

data Parameter
    = Param Type String
  deriving Show
}