{-# function to double a value #-}

doubleMe x = x + x

doubleUs x y = x * 2 + y * 2

doubleUs' x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x * 2

length' :: [a] -> Int
length' xs = sum [1 | _ <- xs]

len :: [a] -> Int
len [] = 0
len (_:xs) = 1 + len xs

rightAngleTriangles :: [(Int, Int, Int)]
rightAngleTriangles = [(a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2]
