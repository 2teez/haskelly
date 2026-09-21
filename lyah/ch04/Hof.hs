-- map function re-wrote
mapper :: (t -> a) -> [t] -> [a]
mapper _ [] = []
mapper f (x:xs) = f x : mapper f xs

-- reduce
reduce :: (Num a) => (t -> a) -> [t] -> a
reduce _ [] = 0
reduce f (x:xs) = (f x) + (reduce f xs)
