# Chapter 7. More Functional Patterns

## Binding Variable to Value
Before variable is applied to specific value, we cannot evaluate the function result. Hence we say *variable is bound to a value* when we can evaluate the function.
```haskell
bindExp :: Integer -> String
bindExp x = 
  let x = 10; y = 5 in -- x and y value is bound here
	"the integer was: " ++ show x
	++ " and y was: " ++ show y
```
### Lexically Scoped
Which means, the value binding is accomplished for smaller scope.
When the value has been ignored because of the following smaller scope, we call that value has been **shadowed**.
```haskell
bindExp :: Integer -> String
x = 15
bindExp x = 
  let x = 10; y = 5 in -- x is 10, because 15 is shadowed
	"the integer was: " ++ show x
	++ " and y was: " ++ show y
```

## Anonymous Function
A function without a name. Declare it with `\`(backslash).
It's like writing `\` instead of `λ` in Lambda Calculus.
```haskell
triple :: Integer -> Integer -- named
(\x -> x * 3) :: Integer -> Integer  -- lambda
```
Remember, anonymous function should be wrapped up in parentheses.

## Pattern Matching
It matches return value for a given value with certain algorithm.
```haskell
isItTwo :: Int -> Bool
isItTwo 2 = True
isItTwo _ = False -- for the rest of the case.

-- you can also use :{, :} to make a code block in REPL
Prelude> :{
*Main| let isItTwo :: Int -> Bool
*Main|     isItTwo 2 = True
*Main|     isItTwo _ = False
*Main| :}

Prelude> isItTwo 2
True
Prelude> isItTwo 5
False
```

## Case matching
We can use **case** to match conditions.
```haskell
myAbs :: Integer -> Integer 
myAbs x = case i of
            True -> (-x)
            False -> x
          where i = x < 0
```

## Guard
We can use **guards** to match conditions.  
```haskell
-- Using if-then-else 
myAbs :: Integer -> Integer
myAbs x = if x < 0 then (-x) else x 

-- Using Guard
myAbs :: Integer -> Integer
myAbs x 
	| x < 0     = (-x)
	| otherwise = x 
```
Remember, the patterns are matched in the order of condition sequence.  
Those two below are different.
```haskell
avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x 
  | y >= 0.9    = 'A' 
  | y >= 0.8    = 'B' 
	...
  where y = x / 100

avgGrade x 
  | y >= 0.8    = 'B' -- this will override the subsequent condition
  | y >= 0.9    = 'A' 
	...
  where y = x / 100
```

## Higher Order Function
HOFs are functions that gets functions as arguments or return functions as results.  
Due to currying, any function that appears to take more than one argument is higher order in Haskell.
```haskell
-- Actually we've seen a lot of HOFs
myHOF :: (a -> b) -> (c -> a) -> c -> b -- this one has 2 functions in it.
```
### Function Composition
You can composite functions like you've learned in math class.
```haskell
negate . sum $ [1, 2, 3, 4, 5]
-- or
(negate . sum) [1, 2, 3, 4, 5]
-- or
negate (sum [1, 2, 3, 4, 5])
```

## Pointfree 
Pointfree is declaring function without mentioning arguments by name.  
It sometimes give more readability.
```haskell
-- not pointfree
blah x = x
addAndDrop x y = x + 1
reverseMkTuple a b = (b, a)
reverseTuple (a, b) = (b, a)

--point free
blah = id
addAndDrop = const . (1 +)
reverseMkTuple = flip (,)
reverseTuple = uncurry (flip (,))

```




## Logging all the warnings with `-Wall`
```haskell
Prelude> :set -Wall
Prelude> :{
*Main| let isItTwo :: Integer -> Bool
*Main|     isItTwo 2 = True
*Main| :}
-- warning log
<interactive>:28:5: Warning:
		This binding for ...
```

## Browse type signatures and functions with `:browse (Module)` 
```haskell
Prelude> :browse MatchingTuple
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
addEmUp2 :: Num a => (a, a) -> a
addEmUp2Alt :: Num a => (a, a) -> a
fst3 :: (a, b, c) -> a
third3 :: (a, b, c) -> c
```