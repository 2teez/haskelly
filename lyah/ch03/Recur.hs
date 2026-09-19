factorial :: Integer -> Integer
factorial n = product [1..n]

-- using recursion
factorial'' :: Integer -> Integer
factorial'' 0 = 1
factorial'' n = n * factorial'' (n - 1)

-- using pattern matching and guards
factorial' :: Integer -> Integer
factorial' n
    | n <= 0 = 1
    | otherwise = n * factorial' (n - 1)

-- using case ... of ...
fac :: Integer -> Integer
fac n = case n of
    0 -> 1
    1 -> 1
    _ -> n * fac (n -1)
