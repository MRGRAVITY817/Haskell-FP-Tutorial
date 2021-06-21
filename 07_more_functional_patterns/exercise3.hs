module Exercise3 where

-- 1
functionC x y = 
	case z of
		True -> x
		False -> y
	where z = x > y

-- 2
ifEvenAdd2 n =
	case z of
		True -> n + 2
		False -> n 
	where z = even n

-- 3
nums x = 
	case compare x 0 of
		LT -> -1
		GT -> 1
		EQ -> 0 