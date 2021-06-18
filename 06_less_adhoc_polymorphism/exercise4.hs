module Exercise3 where

-- 1
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk ab a b = (==) b (ab a)

-- 2
arith :: Num b => (a -> b) -> Integer -> a -> b
arith ab i a = ab a + fromInteger i