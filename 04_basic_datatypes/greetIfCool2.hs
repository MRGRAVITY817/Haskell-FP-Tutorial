-- greetIfCool2.hs
module GreetIfCool2 where

greetIfCool :: String -> IO ()
greetIfCool coolness = 
	if cool coolness
		then putStrLn "eyyy, What up??"
	else
		putStrLn "Psshh"
	where cool v = 
		v == "Downright frosty you"