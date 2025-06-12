module Main where

import Prelude hiding (foldl, foldr)

countdown :: (Eq t, Num t) => t -> [t]
countdown 0 = []
countdown n = n : countdown (n - 1)

countdown' :: (Eq t, Num t) => t -> [t]
countdown' n
  | n == 0 = []
  | otherwise = n : countdown' (n - 1)

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x : xs) = reverse' xs ++ [x]

counter' :: [a] -> Int
counter' [] = 0
counter' (_ : xs) = 1 + counter' xs

factors :: (Integral a) => a -> [a]
factors n =
  let factors' m ls
        | m > n = reverse' ls
        | n `mod` m == 0 = factors' (m + 1) (m : ls)
        | otherwise = factors' (m + 1) ls
   in factors' 1 []

foldl :: (t -> a -> t) -> t -> [a] -> t
foldl fn n ls
  | null ls = n
  | otherwise = foldl fn (fn n (head ls)) (tail ls)

foldr :: (t -> t -> t) -> t -> [t] -> t
foldr fn n ls
  | null ls = n
  | otherwise = fn n (foldr fn (head ls) (tail ls))

main = print $ countdown 20
