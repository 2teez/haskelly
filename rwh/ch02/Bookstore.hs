-- file: Bookstore.hs

-- BookInfo new type, with type constructor
data BookInfo = Book Int String [[Char]]
  deriving (Show)

-- MagazineInfo new type, with type constructor
-- not same with BookInfo though look similar
data MagazineInfo = Magazine Int String [String]
  deriving (Show)

main :: IO ()
main = do
  let myInfo = Book 90675438901 "Algebra of Programming" ["Java Gideon", "Rice Lice"]
  print myInfo
