module Lambda where

-- a
addOneIfOdd n = case odd n of
  True -> (\x -> x + 1) n
  False -> n

-- b
addFive = \x -> \y -> (if x > y then y else x) + 5

-- c
mFlip x y f = x y f