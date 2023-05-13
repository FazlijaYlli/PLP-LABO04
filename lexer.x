{
module Lexer (Token(..),lexer) where
}

%wrapper "basic"

-- REGULAR EXPRESSIONS
$digit = 0-9
$alpha = [a-zA-Z] 
$alnum = [$alpha$digits]

@id = $alpha $alnum*
@comment = \#
@multilinecomment = @comment"*"(.|\n)*"*"@comment
@integer = $digits+
@boolean = (true) | (false)
@string = \"[^\"]*\"

-- RULES OF LEXERS
tokens :-
-- SKIP WHITESPACE AND COMMENTS
    $white+                         { skip }
    @comment                        { skip }
    @multilinecomment               { skip }

-- BOOLEANS
    true                            { \s -> TokenTrue }
    false                           { \s -> TokenFalse }

-- TYPES
    Int                             { \s -> TInt }
    Bool                            { \s -> TokenBool }
    Func                            { \s -> TFunc }

-- KEYWORDS
    let                             { \s -> TokenLet }
    in                              { \s -> TokenIn }
    func                            { \s -> TokenFunc }
    return                          { \s -> TokenReturn }
    match                           { \s -> TokenMatch }
    with                            { \s -> TokenWith }
    if                              { \s -> TokenIf }
    then                            { \s -> TokenThen }
    else                            { \s -> TokenElse }

-- SYMBOLS
    "->"                            { \s -> TokenArrow }
    "=="|"!="|"<="|">="|"&&"|"||"   { \s -> TokenOp s }
    [\+\-\*\/\%\!\=\<\>\|\&]        { \s -> TokenOp s }
    "("                             { \s -> TokenParL }
    ")"                             { \s -> TokenParR }
    "{"                             { \s -> TokenBL }
    "}"                             { \s -> TokenBR }
    ","                             { \s -> TokenComma }
    ";"                             { \s -> TokenSemicolon }
    "_"                             { \s -> TokenUnderscore }
    "$"                             { \s -> TokenDollar }

-- NUMBERS AND IDENTIFIERS
    $digit+                         { \s -> TokenNum (read s) }
    @id                             { \s -> TokenIdent s }
{

-- The token type:
data Token
-- TYPES
    | TInt
    | TBool
-- KEYWORDS
    = TLet
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