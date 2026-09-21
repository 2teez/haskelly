-- file: ch00/Kminima.hs
--
import Data.List

minima k xs = take k $ sort xs

main :: IO ()
main = do 
    print $ minima 3 [3,8,9,1,5,0,7]
