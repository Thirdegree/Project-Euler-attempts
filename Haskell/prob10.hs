--slow, but got there eventually.

isPrime n = go 2
	where
		go d
			| d*d > n = True
			| n `mod` d == 0 = False
			| otherwise = go (d+1)

primes = 2:filter isPrime [3,5..]



main = print $ sum $ takeWhile (<2000000) primes