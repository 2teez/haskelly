import Data.List
import Data.Char

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

wordsNums :: String -> [(String, Int)]
wordsNums = map (\ws -> (head ws, length ws)) . group . sort . words

myTails :: [a] -> [[a]]
myTails [] = []
myTails (x:xs) = (x:xs) : myTails xs

encode :: Int -> String -> String
encode n = map (\c -> chr $ ord c + n)

decode :: Int -> String -> String
decode n = encode (-n)

{-
main :: IO ()
main = do
    putStrLn "Enter a string:"
    str <- getLine
    print $ wordsNums str
-}
