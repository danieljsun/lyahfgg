divideByTen :: (Floating a) => a -> a
divideByTen = (/10)


applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f [] _ = []
zipWith' f _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
  where g b a = f a b
--flip' f x y = g y x

collatz :: Int -> Int
collatz 1 = 1
collatz x
  | even x    = collatz (x `div` 2)
  | otherwise = collatz (x * 3 + 1)
