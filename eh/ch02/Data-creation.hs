module Main where

import Data.Char

data CustomerInfo = CustomerInfo String String Int Int

customerJava :: CustomerInfo
customerJava = CustomerInfo "java" "gosling" 10 10

showCustomer :: CustomerInfo -> String
showCustomer (CustomerInfo firstname lastname items cash) =
  let name = "Name: " <> firstname <> ", " <> lastname
      count' = ", Items: " <> show items
      balance' = ", Balance: " <> show cash
   in name <> count' <> show balance'

titled :: [Char] -> String
titled [] = []
titled (x : xs) = toUpper x : xs

-- using record syntax
-- PersonInfo :: String -> String -> Int -> Int -> PersonInfo
data PersonInfo = PersonInfo
  { firstname :: String,
    lastname :: String,
    widgetCount :: Int,
    balance :: Int
  }

-- create a new raw person
clojurePerson =
  PersonInfo
    { balance = 10,
      firstname = titled "clojure",
      lastname = titled "java",
      widgetCount = 10
    }

-- using a function
newPerson :: String -> String -> Int -> Int -> PersonInfo
newPerson fname lname widCount balance' =
  PersonInfo
    { firstname = titled fname,
      lastname = titled lname,
      widgetCount = widCount,
      balance = balance'
    }

showPersonInfo :: PersonInfo -> String
showPersonInfo cp =
  firstname cp
    <> ", "
    <> lastname cp
    <> ", "
    <> show (widgetCount cp)
    <> ", "
    <> show (balance cp)

haskellPerson = newPerson "haskell" "simeon" 25 12

main :: IO ()
main = print $ showCustomer customerJava
