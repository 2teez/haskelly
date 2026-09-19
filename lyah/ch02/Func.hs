lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky n = "Sorry, you're out of luck, Pal! with " ++ show n

lucky' :: (Num a, Eq a, Show a) => a -> [Char]
lucky' n = if n == 7
    then
      "LUCKY NUMBER SEVEN!"
    else
      "Sorry, you're out of luck, Pal with number " ++ show n

charName :: Char -> String
charName 'j' = "java"
charName 'c' = "clojure"
charName 'h' = "haskell"
charName 'p' = "python"
charName _ = "not a known character"
