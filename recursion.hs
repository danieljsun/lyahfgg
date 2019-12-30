max' :: [Int] -> Int
max' [] = error "empty list"
max' [h] = h
max' (h:tail) = max h (max' tail)

replicate' :: Int -> a -> [a]
replicate' n a
  | n <= 0 = []
  | otherwise = a : replicate' (n - 1) a

take' :: Int -> [a] -> [a]
take' _ [] = []
take' n (h:tail)
  | n <= 0 = []
  | otherwise =  h : take' (n-1) tail

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (h:tail) = reverse' tail ++ [h]

repeat' :: a -> [a]
repeat' a = a : repeat' a

zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (h1:tail1) (h2:tail2) = (h1,h2) : zip' tail1 tail2


elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (h:tail)
  | a == h    = True
  | otherwise = elem' a tail

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
--quicksort (h:tail) = do
    --quicksort (filter (\a -> a < h) tail) ++ [h] ++ quicksort (filter (\a -> a > h) tail)
  --where
    --filter :: (a -> Bool) -> [a] -> [a]
    --filter p [] = []
    --filter p (h:tail)
      -- | p h       = h : filter p tail
      -- | otherwise = filter p tail

quicksort (h:tail) = do
    quicksort smallerOrEqual ++ [h] ++ quicksort larger
  where
    smallerOrEqual = [ x | x <- tail, x <= h ]
    larger = [ x | x <- tail, x > h ]


