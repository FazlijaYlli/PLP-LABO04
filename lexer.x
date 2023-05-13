{
module Lexer (Token(..),lexer) where
}

%wrapper "basic"

-- REGULAR EXPRESSIONS
$digits = [0-9]
$alpha = [a-zA-Z] 
$alnum = [$alpha$digits]

@id = $alpha $alnum*
@comment = \#
@multicom = "/*"(.|\n)*"*/"
@integer = $digits+
@boolean = (true) | (false)
@string = \"[^\"]*\"

-- RULES OF LEXERS
tokens :-
-- SKIP WHITESPACE AND COMMENTS
    $white+                         ;
    @comment.*                      ;
    @multicom                       ;

-- BOOLEANS
    true                            { \s -> TTrue }
    false                           { \s -> TFalse }

-- TYPES
    Int                             { \s -> TInt }
    Bool                            { \s -> TBool }
    Func                            { \s -> TFFunc }

-- KEYWORDS
    let                             { \s -> TLet }
    in                              { \s -> TIn }
    func                            { \s -> TFunc }
    return                          { \s -> TReturn }
    match                           { \s -> TMatch }
    with                            { \s -> TWith }
    if                              { \s -> TIf }
    then                            { \s -> TThen }
    else                            { \s -> TElse }

-- SYMBOLS
    "("                             { \s -> TParL }
    ")"                             { \s -> TParR }
    "{"                             { \s -> TBL }
    "}"                             { \s -> TBR }
    ","                             { \s -> TComma }
    ";"                             { \s -> TSemicolon }
    "_"                             { \s -> TUnderscore }
    "$"                             { \s -> TDollar }
    "->"                            { \s -> TArrow }
    "=="|"!="|"<="|">="|"&&"|"||"   { \s -> TOp s }
    [\+\-\*\/\%\!\=\<\>\|\&]        { \s -> TOp s }

-- NUMBERS AND IDENTIFIERS
    $digits+                         { \s -> TNum (read s) }
    @id                             { \s -> TIdent s }
{

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
    | TMatch
    | TWith
    | TIf
    | TThen
    | TElse
    | TTrue
    | TFalse
-- FUNCTIONS
    | TFFunc
    | TArrow
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
    | TSemicolon
    | TUnderscore
    | TDollar
  deriving (Eq, Show)

-- Function taken from another group's code because i didn't know how to invoke alex.
lexer :: String -> [Token]
lexer s = do
  alexScanTokens s
}