module Main where

main :: IO ()
main = do
  interact wordCount
  where
    wordCount :: String -> String
    wordCount input = show (length (words input)) ++ "\n"
