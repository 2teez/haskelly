module Main where

makeGreeting :: String -> String -> String
makeGreeting salutation person =
  salutation <> " " <> person

extendedGreetings person =
  let hello = makeGreeting "Hello, " person
      goodDay = makeGreeting "Hope you have a nice day" person
      goodBye = makeGreeting "See you later" person
   in hello <> "\n" <> goodDay <> "\n" <> goodBye

main :: IO ()
main = print $ extendedGreetings "Java.."
