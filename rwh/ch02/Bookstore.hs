-- file: Bookstore.hs

-- BookInfo new type, with type constructor
data BookInfo = Book Int String [[Char]]
  deriving (Show)

-- functions to pattern match the data
bookID :: BookInfo -> Int
bookID (Book id _ _) = id

bookTitle :: BookInfo -> String
bookTitle (Book _ title _) = title

bookAuthors :: BookInfo -> [String]
bookAuthors (Book _ _ authors) = authors

-- MagazineInfo new type, with type constructor
-- not same with BookInfo though look similar
data MagazineInfo = Magazine Int String [String]
  deriving (Show)

-- CustomerID new type, which is an alias for Int
type CustomerID = Int

-- ReviewBody new type, which is an alias for String
type ReviewBody = String

-- BookReview new type, with type constructor
data BookReview = BookReview BookInfo CustomerID ReviewBody
  deriving (Show)

type CardNumber = String

type CustomerName = String

type Address = [String]

-- billing information data type ADT - Algberic Data types
data BillingInfo
  = CreditCard CardNumber CustomerName Address
  | CashOnDelivery
  | Invoice CustomerID
  deriving (Show)

main :: IO ()
main = do
  let myInfo = Book 90675438901 "Algebra of Programming" ["Java Gideon", "Rice Lice"]
  print myInfo
