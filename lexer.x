{
{-
  Auteurs : Rui Manuel Mota Carneiro & Ylli Fazlija
-}
module Lexer (Token(..),lexer) where
}

%wrapper "basic"

-- REGULAR EXPRESSIONS
$digits = [0-9]
$alpha = [a-zA-Z] 
$alnum = [$alpha$digits]

@id = $alpha $alnum*
@comment = \#
@integer = $digits+

-- RULES OF LEXERS
tokens :-
-- SKIP WHITESPACE AND COMMENTS
    $white*\n$white*                { \s -> TInstrEnd }
    $white+                         ;
    @comment.*                      ;

-- BOOLEANS
    True                            { \s -> TTrue }
    False                           { \s -> TFalse }

-- TYPES
    int                             { \s -> TInt }
    bool                            { \s -> TBool }
    void                            { \s -> TVoid }

-- KEYWORDS
    func                            { \s -> TFunc }
    handle                          { \s -> THandle }
    trivial                         { \s -> TTrivial}
    if                              { \s -> TIf }
    otherwise                       { \s -> TOtherwise }
    fixed                           { \s -> TFixed }

-- SYMBOLS
    "("                             { \s -> TParL }
    ")"                             { \s -> TParR }
    "{"                             { \s -> TBL }
    "}"                             { \s -> TBR }
    ","                             { \s -> TComma }
    "=>"                            { \s -> TArrow } -- Utilisé dans le handle
    "="|"=/="|"<="|">="|"&"|"|"     { \s -> TOp s }
    [\+\-\*\/\%\!\=\<\>\|\&]        { \s -> TOp s }

-- NUMBERS AND IDENTIFIERS
    $digits+                        { \s -> TNum (read s) }
    @id                             { \s -> TIdent s }
{

-- The token type:
data Token
-- TYPES
    = TInt
    | TBool
    | TVoid
-- KEYWORDS
    | TFunc
    | THandle
    | TTrivial
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
    | TInstrEnd
  deriving (Eq, Show)

-- Function taken from another group's code because i didn't know how to invoke alex.
lexer :: String -> [Token]
lexer s = do
  alexScanTokens s
}