-- file: Customer.hs
module Main where

type CustomerID = Int

type CustomerName = String

type Address = [String]

-- using rectord syntax
data Customer = Customer
  { customerID :: CustomerID,
    customerName :: CustomerName,
    address :: Address
  }
  deriving (Show)

main :: IO ()
main = do
  let customer1 = Customer 23678 "J.R. Hacker" ["255 Syntax Ct", "Milpitas, CA 95134", "USA"]
  print customer1
