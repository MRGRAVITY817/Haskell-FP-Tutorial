-- print3broken.hs
module Print3Broken where

printSecond :: IO ()
printSecond :: do
	putStrLn greeting

main :: IO ()
main = do
	putStrLn greeting -- impossible, since greeting is locally defined
	printSecond
	where greeting = "Yarrrr"