addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, x2) (y1, y2) = (x1 + y1, x2 + y2)

-- get the the three parameters in a three tuple
first :: (a, b, c) -> a
first (a, _, _) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

-- own head function
head' :: [a] -> a
head' (x : _) = x

initials :: String -> String -> String
initials firstname lastname = [f] ++ "." ++ [l]
  where
    (f : _) = firstname
    (l : _) = lastname

initials' :: String -> String -> String
initials' (f : _) (l : _) = [l] ++ "," ++ [f]

cylinder :: Double -> Double -> Double
cylinder r h = sideArea + 2 * topArea
  where
    sideArea = 2 * pi * r * h
    topArea = pi * r ^ 2

cylinder' :: Double -> Double -> Double
cylinder' r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
   in sideArea + 2 * topArea

-- using case .. of .. and where in function
-- // where
describeList :: [a] -> [Char]
describeList ls = "This list is " ++ whatis ls
  where
    whatis [] = "empty list."
    whatis [a] = "singleton list."
    whatis xs = "a longer list."

-- // using case of
describeList' :: [a] -> String
describeList' ls =
  "This list is " ++ case ls of
    [] -> "empty list."
    [a] -> "singleton list."
    xs -> "a longer list."
