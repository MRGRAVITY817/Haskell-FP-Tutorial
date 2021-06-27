module MapFmap where

-- map function list
fstElem = map fst [(2, 3), (4, 5), (6, 7), (8, 9)]
sndElem = map snd [(2, 3), (4, 5), (6, 7), (8, 9)]
-- fmap function list
fstElem = fmap fst [(2, 3), (4, 5), (6, 7), (8, 9)]
sndElem = fmap snd [(2, 3), (4, 5), (6, 7), (8, 9)]

-- lazy evaluation example
newList = [1, 2, undefined]
mapNewList =  map (+1) newList -- won't work
takeOneMapNewList = take 1 mapNewList -- works