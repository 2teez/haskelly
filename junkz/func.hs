-- practicing function - recurrsion in haskell
--
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "can't find maximum of an empty list."
maximum' [x] = x
maximum' (x : xs) = max x (maximum' xs)

replicate' :: Int -> a -> [a]
replicate' n x
  | n <= 0 = []
  | otherwise = x : replicate' minusOne x
  where
    minusOne = n - 1

take' :: Int -> [a] -> [a]
take' n xs
  | n <= 0 = []
  | n > length xs = xs
  | otherwise = head xs : take' (n - 1) (tail xs)

-- another defination  of take
taken :: (Ord a) => Int -> [a] -> [a]
taken 0 xs = []
taken _ [] = []
taken n all@(x : xs)
  | n > length all = all
  | otherwise = x : taken (n - 1) xs

-- another implmentation that is better
takeBetter :: (Integral i) => i -> [a] -> [a]
takeBetter _ [] = []
takeBetter n (x : xs)
  | n <= 0 = []
  | otherwise = x : takeBetter (n - 1) xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x : xs) = reverse' xs ++ [x]

repeat' :: a -> [a]
repeat' x = x : repeat' x

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x : xs) =
  let leftList = [a | a <- xs, x > a]
      rightList = [a | a <- xs, x <= a]
   in quicksort leftList ++ [x] ++ quicksort rightList
