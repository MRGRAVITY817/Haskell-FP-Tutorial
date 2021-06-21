module MatchingTuple where

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
-- f x y = ((snd x, snd y), (fst x, fst y)) original answer
-- using pattern matching
f (a, b) (c, d) = ((b, d), (a, c))

addEmUp2 :: Num a => (a, a) -> a
addEmUp2 (x, y) = x + y 

addEmUp2Alt :: Num a => (a, a) -> a
addEmUp2Alt tup = (fst tup) + (snd tup) 

fst3 :: (a, b, c) -> a
fst3 (x, _, _) = x -- because b and c doesn't matter

third3 :: (a, b, c) -> c
third3 (_, _, x) = x -- because a and b doesn't matter