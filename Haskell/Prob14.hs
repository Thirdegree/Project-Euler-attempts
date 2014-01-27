import Data.List

--this works

collatz :: Integer -> Integer
collatz n 
	| n == 1 = 1
	| even n = 1+ collatz (n `div` 2)
	| otherwise = 1 + collatz (3*n+1)

main = do
	let lengths = map collatz [1..1000000]
	let m = maximum lengths
	let ind = elemIndex m lengths
	case ind of
		Just n -> print (n+1)
		Nothing -> print "Nothing"