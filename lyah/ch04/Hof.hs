-- map function re-wrote
mapper :: (t -> a) -> [t] -> [a]
mapper _ [] = []
mapper f (x : xs) = f x : mapper f xs

-- reduce
reduce :: (Num a) => (t -> a) -> [t] -> a
reduce _ [] = 0
reduce f (x : xs) = f x + reduce f xs

-- using section in haskell
divideBy10 :: (Fractional a) => a -> a
divideBy10 = (/ 10)

-- check the letter
isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A' .. 'Z'])

-- function that accept a function and apply to a parameter
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

main :: IO ()
main = do
  print $ divideBy10 256
  print $ isUpperAlphanum 'T'
  print $ applyTwice (+ 3) 10
