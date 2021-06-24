module DividedBy where

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n d count
          | n < d = (count, n) -- when num is smaller than denom, calc is done
          | otherwise = go (n - d) d (count + 1) -- if not, continue