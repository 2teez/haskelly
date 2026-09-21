-- file: ch00/Wc.hs

main :: IO ()
main = do
  interact wordCount
  where
    wordCount input = show . length $ lines input
