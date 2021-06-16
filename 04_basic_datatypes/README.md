# Chapter 4. Because Pigs Can't Fly: Types

## Type Class
Type classes are bundles of types which has common characteristics.
```bash
Prelude> :t show
show :: Show a => a -> String  
# 'Show a =>' part shows us type class,
# which means parameter a should be in 'Show' type class.
```
### Integers
Integers can be typed with `Int` and `Integer`.
Normally `Int` is for various sized integers.
```bash
Prelude GHC.Int> maxBound :: Int8
127
Prelude GHC.Int> maxBound :: Int16
32767
Prelude GHC.Int> maxBound :: Int32
2147483647
Prelude GHC.Int> maxBound :: Int64
9223372036854775807
```
Check the type class of common integer.
```bash
Prelude> :t 12
12 :: Num p => p # Integers are in 'Num' type class
```

## Constructors
`Data constructors` make values that inhabit a given type.
```haskell
type Name = String -- type aliases
data Pet = Cat | Dog Name
```
The left side of `data` equation (`Pet`) is called `Type Constuctors`.
```bash
Prelude> :t Cat
Cat :: Pet # Cat is nullary data constructor
Prelude> :t Dog
Dog :: Name -> Pet # Dog data constructor takes argument type of 'Name'
```

## Tuples

The number of tuple argument is often called `arity`.
- 'Two'-tuples => (2, 3) # arity = Two
- 'Triple'-tuples => (2, 3, 4) # arity Three

Unlike lists, tuple elements can have different types.
```bash
Prelude> :info (,)
data (,) a b = (,) a b

λ> (,) 8 10
(8, 10)
λ> (,) 8 "Julie"
(8, "Julie")
```
