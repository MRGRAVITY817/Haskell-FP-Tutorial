# Chapter 3. Simple Operations With Text

## Character and String
In REPL, you can type ```Prelude> :type <something>``` to figure out the type of certain element.
```bash
Prelude> :type 'a'
'a' :: Char

Prelude> :type "Apple"
"Apple" :: [Char]
```

## Printing Methods: `print`, `putStrLn`, `putStr`
```bash
Prelude> print "hello world!"
"hello world!" # applicable not only for string

Prelude> putStrLn "hello world!"
hello world! # only for string, and with line break

Prelude> putStr "hello world!"
hello world!Prelude> # only for string, and without line break
```

## Use `++` and `concat` to concatenate strings
### Basic usage
```haskell
myGreeting :: String
myGreeting = "hello" ++ " world"

secondGreeting :: String
secondGreeting = concat ["hello", " ", "world"]
```

### How are they different?
```bash
Prelude> :t (++)
(++) :: [a] -> [a] -> [a] # type a pre -> type a suff -> list of type a

Prelude> :t concat
concat :: [[a]] -> [a] # list of type a list -> list of type a
```

Remember, input types should be same.

### List functions
```bash
Prelude> 'c' : "hris"
"chris" # ':' operator, 'con', makes the list from given inputs

Prelude> head "Harry"
'H' # 'head' returns the first element of the list

Prelude> tail "Potter"
'R' # 'tail' returns the remainders after the head

Prelude> take 3 "James"
'Jam' # 'take' returns the specified number of elements of the list
Prelude> take 0 "James"
'' 

Prelude> drop 4 "Hogwarts"
'arts' # 'drop' returns the remainder of the list after the specified index 
Prelude> drop 1000 "Hogwarts"
''
Prelude> drop 0 "Hogwarts"
'Hogwarts'

Prelude> "Hermione" !! 0
'H' # '!!' returns the specified index element
```


