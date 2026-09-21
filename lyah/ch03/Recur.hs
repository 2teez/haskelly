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


fib :: Integer -> Integer
fib n = case n of
    0 -> 0
    1 -> 1
    _ -> fib (n - 1) + fib (n - 2)

-- maximum function from scratch
maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Can't find maximum of empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

-- replicate 
replicate' :: Int -> a -> [a]
replicate' x n
    | x <= 0 = []
    | otherwise = n : replicate' (x - 1) n


-- take
take' :: Int -> [a] -> [a]
take' n lst
    | n == 0 = []
    | n > len = lst
    | otherwise = h : take' (n - 1) t 
        where len = (length lst) 
              (h, t) = (head lst, tail lst)


-- reverse
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
