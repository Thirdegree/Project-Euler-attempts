#stackoverflows, the haskell one works

primes = []

def isPrime(num, d):
	if d*d > num: return True
	elif num%d==0: return False
	else: return isPrime(num, d+1)

for i in xrange(2000000):
	if isPrime(i, 2):
		primes.append(i)

print sum(primes)