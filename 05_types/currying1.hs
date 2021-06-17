-- currying1.hs
module Currying1 where

f :: a -> a -> a -> a
f x y z = x

simpleInput :: Char
simpleInput = 'H'

jackal :: a -> b -> a
kessel :: a -> b -> a