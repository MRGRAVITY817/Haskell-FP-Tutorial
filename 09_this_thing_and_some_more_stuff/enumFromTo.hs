module EnumFromTo where

eftBool :: Bool -> Bool -> [Bool]
eftBool x y
    | (x, y) == (False, True) = [False, True]
    | x == y  = [x]
    | otherwise = [] 

eftOrdering :: Ordering -> Ordering -> [Ordering]
eftOrdering x y
    | x > y = []
    | x == y = [x]
    | otherwise = [x] ++ (eftOrdering (succ x) y)

eftChar :: Char -> Char -> [Char]
eftChar x y
    | x > y = []
    | otherwise = [x] ++ (eftChar (succ x) y)

eftInt :: Int -> Int -> [Int]
eftInt x y
    | x > y = []
    | otherwise = [x] ++ (eftInt (x + 1) y)