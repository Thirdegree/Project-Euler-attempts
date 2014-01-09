#Ok so /technically/ it works. I don't like it though.

def isPrime(num, d):
	if d*d > num: return True
	elif num%d==0: return False
	else: return isPrime(num, d+1)

def isFactor(num, big):
	return big%num == 0

primeFactors = []

try:
	for i in range(1,600851475143, 2):
		if isPrime(i, 2) and isFactor(i, 600851475143):
			primeFactors.append(i)
except RuntimeError:
	print(primeFactors)