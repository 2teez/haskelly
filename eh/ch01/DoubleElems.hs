module Main where

doubleElems :: (Integral a) => [a] -> [a]
doubleElems ls
  | null ls = []
  | otherwise = 2 * head ls : doubleElems (tail ls)

doubleElems' :: (Integral a) => [a] -> [a]
doubleElems' [] = []
doubleElems' (x : xs) = 2 * x : doubleElems xs

map' :: (t -> a) -> [t] -> [a]
map' fn ls
  | null ls = []
map' fn (x : xs) = fn x : map' fn xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' fn (x : xs)
  | fn x = x : filter' fn xs
  | otherwise = filter' fn xs

sip :: [a] -> [b] -> [(a, b)]
sip [] [] = []
sip _ [] = []
sip [] _ = []
sip (x : xs) (h : hs) = (x, h) : sip xs hs

sumUp :: (Num a) => a -> [a] -> a
sumUp initial ls
  | null ls = 0
  | otherwise = initial + head ls + sumUp initial (tail ls)

sumUp' :: (Num t) => t -> [t] -> t
sumUp' _ [] = 0
sumUp' i (x : xs) = i + x + sumUp' i xs

summe :: (Num t) => [t] -> t
summe (x : xs) = sumi 0 (x : xs)
  where
    sumi _ [] = 0
    sumi i (x : xs) = i + x + sumi i xs

main = print $ doubleElems [1 .. 5]
