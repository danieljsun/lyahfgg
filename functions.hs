lucky :: Int -> String
lucky 4 = "pont"
lucky x = "ping"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (a, b) (x, y) = (a + x, b + y)

firstLetter :: [Char] -> [Char]
firstLetter text@(a:_) = "the first letter of " ++ text ++ " is " ++ [a]

bmi :: Double -> [Char]
bmi x
  | x < 18.5   = "Too slim"
  | x <= 25    = "Great"
  | x <= 30    = "Over"
  | otherwise  = "Too fat"
