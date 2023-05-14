{
module Parser where
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
  let                             { TLet }
  in                              { TIn }
  func                            { TFunc }
  return                          { TReturn }
  handle                          { THandle }
  trivial                         { TTrivial}
  snap                            { TSnap }
  with                            { TWith }
  if                              { TIf }
  otherwise                       { TOtherwise }
  fixed                           { TFixed }

-- SYMBOLS
  "("                             { TParL }
  ")"                             { TParR }
  "{"                             { TBL }
  "}"                             { TBR }
  ","                             { TComma }
  "=>"                            { TArrow } -- Utilisé dans le handle
  "="                             { TOp $$ }
  "=/="                           { TOp $$ }
  "<="                            { TOp $$ }
  ">="                            { TOp $$ }
  "&"                             { TOp $$ }
  "|"                             { TOp $$ }
  '+'                             { TOp $$ }
  '-'                             { TOp $$ }
  '*'                             { TOp $$ }
  '/'                             { TOp $$ }
  '%'                             { TOp $$ }
  '!'                             { TOp $$ }
  '='                             { TOp $$ }
  '<'                             { TOp $$ }
  '>'                             { TOp $$ }
  '|'                             { TOp $$ }
  '&'                             { TOp $$ }

Type
  : Int                     { Int $1 }
  | Bool                    { Bool $1 }
  
Exp   
  : fixed Type var Exp      { Const $2 $3 $4 }
  | Expr                    { Expr $1 }

Expr  
  : Expr '+' Term           { Plus $1 $3 }
  | Expr '-' Term           { Minus $1 $3 }
  | Expr '=' Term           { Equal $1 $3 }
  | Expr "=/=" Term         { NotEqual $1 $3 }
  | '!' Expr                { Not $2}
  | Expr "<=" Term          { BelowEqual $1 $3 }
  | Expr '<' Term           { Below $1 $3 }
  | Expr ">=" Term          { AboveEqual $1 $3 }
  | Expr '>' Term           { Above $1 $3 }
  | Expr '|' Term           { Or $1 $3 }
  | Term                    { Term $1 }

Term  
  : Term '*' Factor         { Times $1 $3 }
  | Term '/' Factor         { Div $1 $3 }
  | Term '%' Factor         { Rest $1 $3}
  | Term '&' Factor         { And $1 $3 }
  | Factor                  { Factor $1 }

Factor
  : int                     { Int $1 }
  | bool                    { Bool $1 }
  | var                     { Var $1 }
  | '(' Exp ')'             { Pars $2 }

n   : t_1 ... t_n   { E }

{
  parseError :: [Token] -> a
    parseError _ = error "Parse error"

  data Type
    = Int Int
    | Bool Bool
  deriving Show

  data Exp
    = Const Type String Exp
    | Expr Expr
  deriving Show

  data Expr
    = Plus Expr Term
    | Minus Expr Term
    | Equal Expr Term
    | NotEqual Expr Term
    | Not Expr
    | BelowEqual Expr Term
    | Below Expr Term
    | AboveEqual Expr Term
    | Above Expr Term
    | Or Expr Term
    | Term Term
  deriving Show

  data Term
    = Times Term Factor
    | Div Term Factor
    | And Term Factor
    | Factor Factor
  deriving Show

  data Factor
    = Int Int
    | Bool Bool
    | Var String
    | Pars Exp
  deriving Show

  -- The token type:
  data Token
  -- TYPES
    = TInt
    | TBool
  -- KEYWORDS
    | TLet
    | TIn
    | TFunc
    | TReturn
    | THandle
    | TTrivial
    | TSnap
    | TWith
    | TIf
    | TOtherwise
    | TTrue
    | TFalse
    | TFixed
  -- FUNCTIONS
    | TOp String
    | TIdent String
    | TNum Int
  -- PARENTHESIS
    | TParL
    | TParR
    | TBL
    | TBR
  -- SPECIAL CHARACTERS
    | TComma
    | TArrow
  deriving (Eq, Show)
}