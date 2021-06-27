module Cipher where

import Data.Char

-- transform each string char in to ASCII int
stringToIntArr :: String -> [Int]
stringToIntArr b = map (\x -> ord x - 97) b
-- shift int array to right with given amount of int
shiftIntArrRight :: Int -> [Int] -> [Int]
shiftIntArrRight a b = map (\x -> mod (x + a) 26) b
-- shift int array to left with given amount of int
shiftIntArrLeft :: Int -> [Int] -> [Int]
shiftIntArrLeft a b = map (\x -> mod (x - a) 26) b
-- transform int array to string
intArrToString :: [Int] -> String
intArrToString b = map (\x -> chr (x + 97)) b
-- Encoding
doCaeser :: Int -> String -> String
doCaeser a b = 
  (intArrToString .shiftIntArrRight a . stringToIntArr) b
-- Decoding
unCaeser :: Int -> String -> String
unCaeser a b = 
  (intArrToString .shiftIntArrLeft a . stringToIntArr) b