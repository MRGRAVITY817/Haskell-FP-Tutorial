# Chapter 5. Types

## Polymorphism I
Haskell presents inferred type system, and this is where type classed are used.
```haskell
fifteen = 15 -- Num type, which is polymorphic
fifteenInt = fifteen :: Int -- Int type, no longer polymorphic
fifteenDouble = fifteen :: Double -- Double type, no longer polymorphic

Prelude> fifteenDouble + fifteen 
30.0 -- possible, because fifteen with polymorph into Int type.
Prelude> fifteenDouble + fifteenInt
![Error] -- because those are no longer polymorphic, and have different type
```

## Typeclass Constraints
Constraints in type signature is a rule of typeclasses that variables in function has to be in.  
There can be multiple typeclass constraints in one type signature.
```haskell
(Num a, Num b) => a -> b -> b
(Ord a, Num a) => a -> a -> Ordering
```

## Currying and Multiple Arguments in Haskell
In Haskell, functions can only have one argument. But we can use `currying` to make function look like multi-args function. Currying is like nesting.
```haskell
addStuff :: Integer -> Integer -> Integer 
addStuff a b = a + b + 5 -- the process is actually a + (b + 5)
```

## Partial Application
Even if the function takes(or looks like) multi-args, since it's actually curried so we can make partial application of the function by giving only one input argument.
```haskell
subtractStuff :: Int -> Int -> Int
subtractStuff x y = x - y - 10      -- same as x - (y - 10)
subtractOne = subtractStuff 1       -- partial application
-- by filling the first argument, subtractOne y = 1 - y - 10

Prelude> :t subtractOne
subtractOne :: Int -> Int
Prelude> subtractOne 11
-20                                 -- 1 - 11 - 10 = -20
```

## Polymorphism II
Polymorphic type variables give us the ability to implement expressions that can accept arguments and return results of different types without having to write variations on the same expression for each type.  

Polymorphism has 2 categories:
- `Parametric`(broader), implemented with types.
- `Constrained`(narrower), implemented with typeclass

... and yet we've seen only constrained one.
```haskell
-- Parametric Polymorphism Example: Identity function
id :: a -> a -- parameter a can be any type, so it's parametric

Prelude> :t negate
Num a => a -> a -- Constrained. Because the type of a can only be one of Num typeclass
```
`Parametric` is **unlimited to types,** but *limited to methods* since it has to please all types.  
`Constrained` is *limited to typeclasses*, but has **more freedom of method** since it only has to please few types.

## From Integral to Num
Since `length` function is not basically fractional, we cannot do
```haskell
6 / length [1, 2, 3] -- 6 :: Num, length [1, 2, 3] :: Int
-- They both have to be fractional to do '/'
```
To solve this, we use `fromIntegral` function.
```haskell
Prelude> :t fromIntegral
fromIntegral :: (Num b, Integral a) => a -> b

6 / fromIntegral (length [1, 2, 3]) -- works!
```
