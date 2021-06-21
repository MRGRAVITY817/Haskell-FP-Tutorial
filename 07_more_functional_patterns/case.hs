module Case where

pal xs =
  case xs == reverse xs of
		True -> "yes"
		False -> "no"

pal' xs =
  case y of
		True -> "yes"
		False -> "no"
	where y = xs == reverse xs

greetIfCool :: String -> IO ()
greetIfCool coolness =
	case cool of
		True -> putStrLn "Eyyy.. What's shaking?"
		False -> putStrLn "Psshh"
	where cool = coolness == "downright frosty yo"