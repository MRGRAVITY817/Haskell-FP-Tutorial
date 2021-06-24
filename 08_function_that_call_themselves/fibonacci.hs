module Fibonacci where

fibonacci :: Intgeral a => a -> a
-- Base case
fibonacci 0 = 0
fibonacci 1 = 1
-- Recursion
fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)