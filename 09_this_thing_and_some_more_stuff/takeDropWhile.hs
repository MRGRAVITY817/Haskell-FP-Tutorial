module TakeDropWhile where

myWords :: [Char] -> [[Char]] 
myWords x
    | (dropWhile (/=' ') x) == [] = [takeWhile (/=' ') x]
    | otherwise = [takeWhile (/=' ') x] ++ (myWords (tail $ dropWhile (/=' ') x))

myLines :: [Char] -> [[Char]] 
myLines x
    | (dropWhile (/='\n') x) == [] = [takeWhile (/='\n') x]
    | otherwise = [takeWhile (/='\n') x] ++ (myLines (tail $ dropWhile (/='\n') x))

firstSen = "Tyger Tyger, burning bright\n" 
secondSen = "In the forests of the night\n" 
thirdSen = "What immortal hand or eye\n" 
fourthSen = "Could frame thy fearful\
\ symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

newSentences = myLines sentences

main :: IO ()
main = 
    print sentences