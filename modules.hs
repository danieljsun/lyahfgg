--import Data.List
import Data.List (nub, sort, group, words, tails, isPrefixOf, isInfixOf)
--import Data.List hiding (nub)

import Data.Char

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

numWords :: String -> [(String, Int)]
numWords = map (\ws -> (head ws, length ws)) . group . sort . words

needlInHaystack :: String -> String -> Bool
needlInHaystack needle = any (isPrefixOf needle) . tails

needlInHaystack' :: String -> String -> Bool
needlInHaystack' = isInfixOf

encode :: Int -> String -> String
encode n = map (chr . (+n) . ord)

sumOfDigits :: Int -> Int
sumOfDigits a
  | a <= 9 = a
  | otherwise = let remainder = a `rem` 10
                    a' = a `quot` 10
                in remainder + sumOfDigits a'

sumOfDigits' :: Int -> Int
sumOfDigits' = sum . map digitToInt . show
