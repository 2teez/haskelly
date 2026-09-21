-- file: Drop.hs
-- drop n elements from the front of a list
-- using pattern matching
myDrop :: Int -> [a] -> [a]
myDrop _ [] = []
myDrop n lst
  | n <= 0 = lst
myDrop n (_ : xs) = myDrop (n - 1) xs

-- using haskell guard
myDrop' :: Int -> [a] -> [a]
myDrop' _ [] = []
myDrop' n lst@(_ : xs)
  | n <= 0 = lst
  | otherwise = myDrop' (n - 1) xs

-- using if statement
myDrop'' :: Int -> [a] -> [a]
myDrop'' _ [] = []
myDrop'' n lst@(_ : xs) =
  if n <= 0
    then lst
    else myDrop'' (n - 1) xs

-- main
main :: IO ()
main = do
  print $ myDrop 2 [1, 2, 3, 4]
  print $ myDrop' 2 [1, 2, 3, 4]
  print $ myDrop'' 2 [1, 2, 3, 4]
