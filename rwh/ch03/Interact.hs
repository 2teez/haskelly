-- file: Interact.hs

import System.Environment (getArgs)

interactWith function inputFile outputFile = do
  input <- readFile inputFile
  let output = function input
  writeFile outputFile output

main = do
  args <- getArgs
  case args of
    [inputFile, outputFile] -> interactWith id inputFile outputFile
    _ -> putStrLn "Usage: interactWith <inputFile> <outputFile>"
