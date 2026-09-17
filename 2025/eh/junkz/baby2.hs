-- get all capital letters
removeNoneUppercase :: String -> String
removeNoneUppercase st = [c | c <- st, c `elem` ['A' .. 'Z']]

-- factorial of numbers
factorial :: Integer -> Integer
factorial n = product [1 .. n]

-- calculate the circumference of a circle
circumference :: Float -> Float
circumference r = 2.0 * pi * r

-- calculate the circumference of a circle using Double
circum :: Double -> Double
circum r = 2.0 * pi * r
