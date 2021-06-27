module Exercise where

import Data.Char
-- Extract only uppercase
helloFilter :: String -> String
helloFilter xs = filter (\x -> isUpper x) xs

-- Capitalize the first letter
capFirst :: String -> String
capFirst (x:xs) = ((toUpper x):xs)

-- Capitalize all
capAll :: String -> String
capAll xs = map (\x -> toUpper x) xs

-- Capitalize and return only first letter
myHead :: [Char] -> Char
-- myHead x = head (capFirst x)
-- myHead x = head . capFirst $ x
myHead = head . capFirst