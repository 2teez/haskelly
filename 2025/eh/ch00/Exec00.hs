module Main where

factorial :: Integer -> Integer
factorial n = product [1 .. n]

factorial' :: Integer -> Integer
factorial' n
  | n == 0 = 1
  | otherwise = n * factorial' (n - 1)

fibonacci n
  | n <= 2 = 1
  | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

main = print $ [factorial' x | x <- [1 .. 500]]
