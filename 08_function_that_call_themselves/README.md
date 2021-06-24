# Chapter 8. Functions That Call Themselves

## Recursion
Recursive function calls itself until the **base case**, which is the end of the process.
```haskell
dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0 -- base case
  where go n d count
          | n < d = (count, n) 
          | otherwise = go (n - d) d (count + 1) 
```

