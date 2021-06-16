-- greetIfCool.hs
module GreetIfCool where

greetIfCool :: String -> IO ()
greetIfCool coolness = 
	if cool
		then putStrLn "Eyy. What's shaking?"
	else
		putStrLn "pshhhh"
	where cool = 
		coolness == "downright frosty yo"