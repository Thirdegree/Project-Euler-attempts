import Data.List

triangleNum = scanl1 (+) [1..]

--this thing again

isPrime n = go 2
	where
		go d
			| d*d > n = True
			| n `mod` d == 0 = False
			| otherwise = go (d+1)

primes = 2:filter isPrime [3,5..]

primeFactors n = factor n primes
 where
 	factor n (p:ps)
 		| p*p >n = [n]
 		| n `mod` p == 0 = p : factor (n `div` p) (p:ps)
 		| otherwise = factor n ps

factorNumber n = product $ map ((+1) . length) (group (primeFactors n))

main = print $ head $ filter (\t -> factorNumber t>500) triangleNum