module Main where

branchIfElse :: Int -> IO ()
branchIfElse number =
  if number < 10
    then
      print number
    else
      print "Large number"

branchGuard :: (Integral a, Show a) => a -> IO ()
branchGuard number
  | number < 10 = print number
  | otherwise = print "Large number"

branchLetIf :: (Integral a, Show a) => a -> IO ()
branchLetIf num =
  let msg =
        if num < 10
          then show num
          else "large number given"
   in print msg

(%) a b = a `mod` b

infixl 7 %

fizzbuzz :: Int -> String
fizzbuzz num
  | fifteenMod = "fizzbuzz\n"
  | fifthMod = "fizz\n"
  | threeMod = "buzz\n"
  | otherwise = show num <> "\n"
  where
    fifteenMod = num % 15 == 0
    fifthMod = num % 5 == 0
    threeMod = num % 3 == 0

main :: IO ()
main =
  branchIfElse 3
