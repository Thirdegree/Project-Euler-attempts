def collatz(n):
	
	if n == 1:
		return n
	if n%2 == 0:
		return [n].append(collats(n/2))
	if n%2 == 1:
		return [n].append(collats((3*n)+1))
