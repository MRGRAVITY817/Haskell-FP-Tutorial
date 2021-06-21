module Composition where

-- composition

negate . sum $ [1, 2, 3, 4, 5]
-- or
(negate . sum) [1, 2, 3, 4, 5]
-- or
negate (sum [1, 2, 3, 4, 5])

f x = take 5 . enumFrom $ x

-- point-free

add :: Int -> Int -> Int
add x y = x + y

addPF :: Int -> Int -> Int
addPF = (+)

addOne :: Int -> Int
addOne = \x -> x + 1

addOnePF :: Int -> Int
addOnePF = (+1) 

-- the secret of print function

print :: Show a => a -> IO ()
-- using the . operator for composing functions
(.) :: (b -> c) -> (a -> b) -> a -> c
--    [putStrLn]    [show] 
print a = (putStrLn . show) a
-- make it point free?
print = putStrLn . show