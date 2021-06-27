module Exercise2 where

-- 1: myOr returns True if any Bool in the list is True
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

-- 2: myAny returns True if any of the value in 
-- [a] returns True with function (a->Bool)
myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs)
    | f x == True = True
    | otherwise = myAny f xs

-- 3: Recursive elem
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem a (x:xs)
    | a == x = True
    | otherwise = myElem a xs

--4: Reversing List 
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- 5: Squish flattens lists to a single list
squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

-- 6: Map and concat
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f x = squish (map (\x -> f x) x)

-- 7: squish, but again using squishMap
squishAgain :: [[a]] -> [a]
squishAgain xlist = squishMap (\x -> x) xlist

-- 8: Find maximum value in list by comparison function
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x1:x2:xs)
    | length xs == 0 = 
        if f x1 x2 == GT then x1 else x2 
    | f x1 x2 == GT = myMaximumBy f (x1:xs)
    | f x1 x2 == LT = myMaximumBy f (x2:xs)

-- 9: Find minimum value in list by comparison function
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f (x1:x2:xs)
    | length xs == 0 = 
        if f x1 x2 == LT then x1 else x2 
    | f x1 x2 == LT = myMinimumBy f (x1:xs)
    | f x1 x2 == GT = myMinimumBy f (x2:xs)

-- 10: Custom min and max
myMax :: (Ord a) => [a] -> a
myMax a = myMaximumBy compare a

myMin:: (Ord a) => [a] -> a
myMin a = myMinimumBy compare a