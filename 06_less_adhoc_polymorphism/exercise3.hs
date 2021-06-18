import Data.List

-- 2
f2 :: Float
-- f2 :: Num a => a
f2 = 1.0

-- 3
-- f :: Float
f3 :: Fractional a => a
f3 = 1.0

-- 4
-- f :: Float
f4 :: RealFrac a => a
f4 = 1.0

-- 5
-- freud :: a -> a
freud :: Ord a => a -> a
freud x = x

-- 6
-- freud' :: a -> a
freud' :: Int -> Int
freud' x = x

-- 7
myX = 1 :: Int
sigmund :: Int -> Int
-- sigmund :: a -> 
sigmund x = myX

-- 8
myY = 1 :: Int
sigmund' :: Int -> Int 
-- sigmund' :: Num a => a -> a
sigmund' x = myY

-- 9 
-- jung :: Ord a => [a] -> a
jung :: [Int] -> Int 
jung xs = head (sort xs)

-- 10
-- young :: [Char] -> Char
young :: Ord a => [a] ->a 
young xs = head (sort xs)

-- 11
mySort :: [Char] -> [Char]
mySort = sort
signifier :: [Char] -> Char
-- signifier :: Ord a => [a] => a
signifier xs = head (mySort xs)


