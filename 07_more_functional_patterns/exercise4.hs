module Exercise4 where

-- 1
hunnitDigit :: Integral a => a -> a
hunnitDigit x = d2
  where (xLast, d0) = x `divMod` 100
        d1 = xLast `mod` 100
        d2 = d1 `mod` 10

-- 2
foldBool :: a -> a -> Bool -> a
foldBool x y z = 
  case i of
    True  -> x
    False -> y
  where i = z

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z 
  | z == True  = x
  | z == False = y

-- 3
g :: (a -> b) -> (a, c) -> (b, c)
g aToB ac = (aToB $ fst ac, snd ac)
