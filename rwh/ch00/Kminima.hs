-- file: ch00/Kminima.hs
--
import Data.List

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = (quicksort [y | y <- xs, y <= x]) ++ [x] ++ (quicksort [y | y <- xs, y > x])

-- use sort for Data.List avaliable instead of hand crafted quicksort here 
minima k xs = take k $ quicksort xs 

main :: IO ()
main = do
    print $ minima 3 ls
        where ls = [3,8,9,1,5,0,7]
