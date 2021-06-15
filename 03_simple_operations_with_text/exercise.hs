-- exercise.hs
module Exercise where

problem :: String
problem = "Curry is awesome"

identity :: String -> String
identity x = x

letterIndex :: Int -> Char 
letterIndex x = y !! x
  where y = "Curry is awesome"

dropNine :: String -> String
dropNine x = drop 9 x

rvrs :: String -> String
rvrs x = concat [(dropNine x), " ", (take 2 (drop 6 x)), " ", (take 5 x)]

main :: IO ()
main = print (rvrs problem)