
header :: [a] -> a
header [] = error "can't call header on empty list"
header (x:_) = x

telly :: (Show a) => [a] -> String
telly [] = "Empty List"
telly (x:[]) = "list with a single element" ++ show x
telly (x:y:[]) = "list with two elements" ++ show x ++ show y
telly (x:y:_) = "list with more than three elements" ++ show x ++ show y

-- using pattern matching and guards
min' :: (Ord a) => a -> a -> a
min' x y
    | x < y = x
    | otherwise = y

min'' :: (Ord a) => a -> a -> a
min'' x y = if x < y then x else y

-- using let <expression> in <expression>
cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r^2
    in sideArea + 2 * topArea

-- using where
cylinder' :: Double -> Double -> Double
cylinder' r h = sideArea + 2 * topArea
    where sideArea = 2 * pi * r * h
          topArea = pi * r^2

-- using case <expression> of <expression> in haskell
head'' :: [a] -> a
head'' xs = case xs of
    [] -> error "can't call head on empty list"
    (x:_) -> x

describeList :: [a] -> String
describeList xs = case xs of
    [] -> "empty list"
    (x:[]) -> "list with a single element" ++ show x
    (x:y:[]) -> "list with two elements" ++ show x ++ show y
    (x:y:_) -> "list with more than three elements" ++ show x ++ show y
