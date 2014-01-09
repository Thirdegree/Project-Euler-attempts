#works, but wayyyyyyyyy too slowly.
'''
t = []
done = False
i = 1

while not done:
	t = [i%j==0 for j in xrange(1,21)]
	if all(t):
		print i
		done = True
	else:
		i+=1
'''

#works, but I don't fully understand Euclidean algorithm used in gcd.
def gcd(a,b):
	while b:
		a,b = b, a%b
	return a

def lcm(a,b):
	return a*b/gcd(a,b)

def m():
	return reduce(lcm, xrange(1,21))

print m()