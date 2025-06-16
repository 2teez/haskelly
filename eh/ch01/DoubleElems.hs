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

sip [] [] = []
sip _ [] = []
sip [] _ = []
sip (x : xs) (h : hs) = (x, h) : sip xs hs

main = print $ doubleElems [1 .. 5]
