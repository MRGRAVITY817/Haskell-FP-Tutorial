module ListComprehension where

mySqr = [x^2 | x <- [1..10]]

evenSqr = [x | x <- mySqr, rem x 2 == 0]
-- [4, 16, 36, 64, 100]

tupleSqr = [(x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50]

fiveTupleSqr = take 5 tupleSqr 

mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

-- 1
myTuple = [(x, y) | x <- mySqr, y <- myCube]

-- 2
myBoundTuple = [(x, y) | x <- mySqr, y <- myCube, x < 50, y < 50]
