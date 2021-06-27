# Chapter 9. This Thing and Some More Stuff: Using List

## Product type and Sum Type
In type theory, **product Type** is a type made of a set of types compounded each other.  
**Sum type** of two types is a type those whose terms are terms in either type, but not simultaneously.

## Cons(tructor)
**Cons** is ordinarily used as a verb to signify that list value has been created by *cons*ing a value onto the head of another list value.  
In Haskell, we use `:` is the cons operator for the list type.
```haskell
1:[2, 3] -- we are consing 1
[1, 2, 3] -- result of above

(:) :: a -> [a] -> [a] -- consing type
```

## Cons cell and Spine
**Cons cell** is a data constructor and a product of the types a and [a] as defined in a list datatype.
```haskell
data [] a = [] | a : [a]
-- or if we define it by ourselves
data List a = Nil | Cons a (List a)
-- and we create a list with our cons cell
Cons 1 (Cons 2 (Cons 3 Nil)) -- equal to [1, 2, 3]
```
**Spine** is a way to refer to the structure that glues a collection of values together.
```haskell
1 : -- spines
  (2 :
	  (3 : 
		  []))
```

## List comprehension
We can make list out of list comprehension using following expressions:
```haskell
-- [x | x <- xList, predicate x]
mySqr = [x^2 | x <- [1, 2, 3]]
myCubeButSmall =
	[w * h * d | w <- [1, 2, 3], h <- [3, 4, 5], d <- [5, 6, 7], x < 2]
```

## List tools: `elem`, `map`, `fmap`, `filter`, `zip`, `unzip`, `zipWith`
```haskell
elem a [a] -- check if a is in [a]
map (\x -> f x) xList -- apply function f for every elements in xList and return the result list, fmap is something similar but can be applied not only lists.
filter (\x -> f x) xList -- apply predicate(a function that returns bool with given input) and filter out, return the result list. 
zip [1, 2, 3] [2, 3, 4] -- [(1,2), (2,3), (3,4)]
unzip [(1,2), (2,3), (3,4)] = ([1, 2, 3] [2, 3, 4])
zipWith (+) [1, 2, 3] [2, 3, 4] -- [3, 5, 7]
```