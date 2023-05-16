{
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
  return                          { TReturn }
  handle                          { THandle }
  trivial                         { TTrivial }
  snap                            { TSnap }
  if                              { TIf }
  otherwise                       { TOtherwise }
  fixed                           { TFixed }
  ident                           { TIdent $$ }
  num                             { TNum $$ }

-- SYMBOLS
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

%left "&" "|"
%nonassoc ">" "<" ">=" "<=" "=" "=/="
%left "+" "-"
%left "*" "/" "%"
%right "!"
%%

Expr
  : fixed VarExpr               { Cnst $2 }
  | "(" AnyExpr "," AnyExpr ")" { Tupl $2 $4 }
  | "(" ")"                     { TupE }
  | "(" Expr ")"                { Pars $2 }
  | AnyExpr                     { Expr $1 }

AnyExpr
  | IntExpr                     { TupI $1 }
  | BoolExpr                    { TupB $1 }

VarExpr
  : bool ident BoolExpr         { Bool $2 $3 }
  | int ident IntExpr           { Intg $2 $3 }

BoolExpr
  : "!" BoolExpr                { BNot $2 }
  | IntExpr "=" IntExpr         { BEql $1 $3 }
  | IntExpr "=/=" IntExpr       { BNEq $1 $3 }
  | IntExpr "<" IntExpr         { BBlw $1 $3 }
  | IntExpr "<=" IntExpr        { BBlE $1 $3 }
  | IntExpr ">" IntExpr         { BAbv $1 $3 }
  | IntExpr ">=" IntExpr        { BAbE $1 $3 }
  | BoolExpr "|" BoolExpr       { BOrr $1 $3 }
  | BoolExpr "&" BoolExpr       { BAnd $1 $3 }
  | True                        { LBol True }
  | False                       { LBol False }
  | ident                       { BVar $1 }
  | "(" BoolExpr ")"            { BPar $2 }

IntExpr
  : IntExpr "+" IntExpr       { IAdd $1 $3 }
  | IntExpr "-" IntExpr       { ISub $1 $3 }
  | IntExpr "*" IntExpr       { IMul $1 $3 }
  | IntExpr "/" IntExpr       { IDiv $1 $3 }
  | IntExpr "%" IntExpr       { IRes $1 $3 }
  | num                       { LInt $1 }
  | ident                     { IVar $1 }
  | "(" IntExpr ")"           { IPar $2 }

{

parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr
    = Cnst VarExpr
    | Tupl AnyExpr AnyExpr
    | TupE
    | Pars Expr
    | Expr AnyExpr
  deriving Show

data AnyExpr
    = TupV String
    | TupI IntExpr
    | TupB BoolExpr
  deriving Show

data VarExpr
    = Bool String BoolExpr
    | Intg String IntExpr
  deriving Show

data BoolExpr
    = BNot BoolExpr
    | BEql IntExpr IntExpr
    | BNEq IntExpr IntExpr
    | BBlw IntExpr IntExpr
    | BBlE IntExpr IntExpr
    | BAbv IntExpr IntExpr
    | BAbE IntExpr IntExpr
    | BOrr BoolExpr BoolExpr
    | BAnd BoolExpr BoolExpr
    | LBol Bool
    | BVar String
    | BPar BoolExpr
  deriving Show

data IntExpr
    = IAdd IntExpr IntExpr
    | ISub IntExpr IntExpr
    | IMul IntExpr IntExpr
    | IDiv IntExpr IntExpr
    | IRes IntExpr IntExpr
    | LInt Int
    | IVar String
    | IPar IntExpr
  deriving Show
}