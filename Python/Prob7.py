#works. isPrime taken from Prob3
primes = []
i = 1
p = 0
done = False

def isPrime(num, d):
	if d*d > num: return True
	elif num%d==0: return False
	else: return isPrime(num, d+1)

while p<=10001:
	if isPrime(i, 2):
		primes.append(i)
		p+=1
	i+=1

print max(primes)