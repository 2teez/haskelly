-- file: Take.hs

myTake :: Int -> [a] -> [a]
myTake n _
  | n <= 0 = []
myTake _ [] = []
myTake n (x : xs) = x : myTake (n - 1) xs

myTake' :: Int -> [a] -> [a]
myTake' _ [] = []
myTake' n lst@(x : xs) =
  if n <= 0
    then []
    else x : myTake' (n - 1) xs

main :: IO ()
main = do
  print $ myTake 3 [1, 2, 3, 4, 5]
