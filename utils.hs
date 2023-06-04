{-
    Auteurs : Rui Manuel Mota Carneiro & Ylli Fazlija
-}

module Utils where

unpack :: [Maybe String] -> [String]
unpack [] = []
unpack (element:elements) = case element of
    Nothing -> unpack elements
    Just error -> error : unpack elements

--Source : https://www.appsloveworld.com/coding/haskell/21/haskell-checking-if-all-list-elements-are-unique
allUnique :: (Eq a) => [a] -> Bool
allUnique [] = True
allUnique (x:xs) = x `notElem` xs && allUnique xs

isElem :: String -> [(String, a)] -> Bool
isElem _ [] = False
isElem name (function:functions)
    | name == fst function = True
    | otherwise = isElem name functions