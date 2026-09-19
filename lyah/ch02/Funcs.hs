
header :: [a] -> a
header [] = error "can't call header on empty list"
header (x:_) = x

telly :: (Show a) => [a] -> String
telly [] = "Empty List"
telly (x:[]) = "list with a single element" ++ show x
telly (x:y:[]) = "list with two elements" ++ show x ++ show y
telly (x:y:_) = "list with more than three elements" ++ show x ++ show y

min' :: (Ord a) => a -> a -> a
min' x y
    | x < y = x
    | otherwise = y

min'' :: (Ord a) => a -> a -> a
min'' x y = if x < y then x else y
