module Main where

import Prelude hiding (reverse)

-- revsering a list with foldr and foldl
-- reversing a list
reverse :: [a] -> [a]
reverse [] = []
reverse (x : xs) = reverse xs <> [x]

sipWith f _ [] = []
sipWith f [] _ = []
sipWith f (x : xs) (h : hs) = f x h : sipWith f xs hs

collapze :: [a] -> [a] -> [a]
collapze [] hs = hs
collapze xs [] = xs
collapze xs hz = xs <> hz

main = print "Hello, World!"
