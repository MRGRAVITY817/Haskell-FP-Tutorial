
-- My First Haskell Code

-- REPL (GHCI) commands
-- stack ghci -> start GHC(Glasgow Haskell Compiler) with interactive environment
-- :quit or :q -> quit REPL
-- :info <something> or :i <something> -> get info about something
-- :load <filename> or :l <filename> -> load Haskell file
-- :module or :m -> detach the loaded file
-- :reload or :r -> reload the loaded file when the file is changed

sayHello :: String -> IO ()
sayHello x = putStrLn("Hello, " ++ x ++ "!")

-- triple -> name of the function
-- x -> head part of lambda
-- = -> function definition
-- x * 3 -> body part of lambda
triple x = x * 3
quadruple x = x * 4

-- exercise
circularArea r = pi * r ^ 2

