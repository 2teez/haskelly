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

last' :: [a] -> a
last' [] = error "last': empty list"
last' [x] = x
last' (_ : xs) = last' xs

lastButOne :: [a] -> a
lastButOne [] = error "lastButOne: empty list"
lastButOne [x, _] = x
lastButOne (_ : xs) = lastButOne xs

main :: IO ()
main = do
  print $ myTake 3 [1, 2, 3, 4, 5]
  print $ last' [1, 2, 3, 4, 5]
  print $ lastButOne [1, 2, 3, 4, 5]
  print $ lastButOne "JavaScript"
