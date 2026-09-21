-- file: Add.hs

add :: (Num a) => a -> a -> a
add x y = x + y

main :: IO ()
main = do
  let result = add 3 5
  print result
