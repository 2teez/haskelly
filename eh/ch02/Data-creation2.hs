{-# LANGUAGE RecordWildCards #-}

module Main where

--- data Person = Person String String Int
-- use record
data Person = Person
  { firstname :: String,
    lastname :: String,
    age :: Int
  }

newPerson :: String -> String -> Int -> Person
newPerson firstname lastname age =
  Person
    { firstname = firstname,
      lastname = lastname,
      age = age
    }

printPerson :: Person -> String
printPerson Person {..} =
  "Person{FirstName: " <> firstname <> ", LastName: " <> lastname <> ", Age: " <> show age <> "}"

javaPerson = newPerson "James" "Gosling" 54

main = print $ printPerson javaPerson
