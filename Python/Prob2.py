def fib(n, m):
	return m, m+n

t = (0,1)
s = []
while t[0]<4000000:
	if t[0]%2 == 0:
		s.append(t[0])
	t = fib(t[0],t[1])

print sum(s)
