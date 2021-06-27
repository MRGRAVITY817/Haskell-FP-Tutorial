module Filter where

-- filter predicate list

filterEven = filter even [1..10]
-- same using anonymous function
filterEvenAn = filter (\x -> (rem x 2) == 0) [1..10]

filterVowels = filter (\x -> elem x "aeiou") "abracadabra"
filterVowelsComp = [x | x <- "abracadabra", elem x "aeiou"]

-- exercise: filtering
-- 1
tripleFilter = filter (\x -> (rem x 3) == 0) [1..30]
-- 2
countTripleFilter = length tripleFilter 
-- 3
articleFilter a = filter 
    (\x -> not (
        x == "the" || 
				x == "a" || 
				x == "an")) a
myFilter a = articleFilter . words $ a