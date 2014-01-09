#pretty sure  this workes, but the haskell one got there first.

def isTrip(a,b,c):
	return (a**2 + b**2 == c**2)

def sumP(a,b,c):
	return (a+b+c==1000)

a=b=c= range(1,1000)

for i in a:
	for j in b:
		for k in c:
			if isTrip(i,j,k) and sumP(a,b,c):
				print a*b*c