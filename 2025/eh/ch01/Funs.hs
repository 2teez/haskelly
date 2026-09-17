module Main where

fib :: (Ord a, Num a) => a -> a
fib n
  | n == 0 = 0
  | n <= 2 = 1
  | otherwise = fib' 3 1 1
  where
    fib' i b c
      | i == n = b + c
      | otherwise = fib' (i + 1) c (b + c)

primes :: (Integral a) => a -> Bool
primes n
  | n <= 1 = False
  | n <= 3 = True
  | otherwise = primes' n 2
  where
    primes' x y
      | y * y > x = True
      | 0 == x `mod` y = False
      | otherwise = primes' x (y + 1)

findfirst :: (a -> Bool) -> [a] -> [a]
findfirst _ [] = []
findfirst prd (x : xs)
  | prd x = [x]
  | otherwise = findfirst prd xs

main = print $ show $ [x | x <- [1 ..], primes x] !! 27
