module Exercise2 where

myFunc :: (x -> y)
       -> (y -> z)
       -> c 
       -> (a, x)
       -> (a, z)

myFunc xToY yToZ _ (a, x) = (a, (yToZ (xToY x)))

-- no. 1
i :: a -> a
i a = a

-- no. 2
c :: a -> b -> a
c a b = a

-- no. 3
c'' :: b -> a -> b
c'' b a = b

-- no. 4
c' :: a -> b -> b
c' a b = b

-- no. 5
r :: [a] -> [a]
r [a] = tail [a]

-- no. 6
co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC (aToB a)

-- no. 7
a :: (a -> c) -> a -> a
a aToC a = a

-- no. 8
a' :: (a -> b) -> a -> b
a' aToB a = aToB a
