doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

-- length of a list
len xs = sum [1 | _ <- xs]

-- remove all the non capital letters
removeAllNonCapitables str = [c | c <- str, c `elem` ['A' .. 'Z']]
