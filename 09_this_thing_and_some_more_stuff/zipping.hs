module Zipping where

-- 1: Building my own zip function
myZip :: [a] -> [b] -> [(a, b)]
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = [(x, y)] ++ myZip xs ys

-- 2: Building my own zipWith function
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f x y = map (\(x, y) -> f x y) (myZip x y)