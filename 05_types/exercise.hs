{-# LANGUAGE NoMonomorphismRestriction #-}

module Exercise where

example = 1 -- Num type
-- without `NoMonomorphismRestriction`, example would have been Integer type.

x1 = 5
y1 = x1 + 5
w1 = y1 * 10

x2 = 5
y2 = x2 + 5
f2 = 4 / y2

x3 = "Julie"
y3 = " <3"
z3 = "Haskell"
f3 = x3 ++ y3 ++ z3

functionH (x:_) = x
functionC x y = 
  if (x > y) then True else False
functionS (x, y) = y


