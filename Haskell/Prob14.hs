
collatz :: Integer -> [Integer]
collatz n 
	| n == 1 = [1]
	| even n = n:collatz (n `quot` 2)
	| otherwise = n:collatz (3*n+1)

chains = [collatz x | x<-[1..]]

main = print $ chains!!654547654