-- file: Funcs.hs
len :: [a] -> Int
len [] = 0
len (_ : xs) = 1 + len xs

len' :: [a] -> Int
len' lst
  | null lst = 0
  | otherwise = 1 + len' (tail lst)

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x : xs) = x + sum' xs

mean [] = 0
mean lst = fromIntegral (sum' lst) / fromIntegral (len lst)

main :: IO ()
main = do
  print $ mean [1, 7, 8, 3, 4]
