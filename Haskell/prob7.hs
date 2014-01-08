--isPrime taken from stackoverflow, but I finally understand it.

isPrime n = go 2
	where
		go d
			| d*d > n = True
			| n `mod` d == 0 = False
			| otherwise = go (d+1)

primes = 2:filter isPrime [3,5..]

main = print (primes!!10000)