module Exercise1 where
-- 1
dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n d count
          | n < d = (count, n)
          | otherwise = go (n - d) d (count + 1)
-- 2
addAll :: (Eq a, Num a) => a -> a
addAll 0 = 0
addAll num = num + (addAll $ num - 1) 
-- 3
multSum :: Integral a => a -> a -> a
multSum mpct 0 = 0
multSum mpct mplr = mpct + (multSum mpct $ mplr - 1)
