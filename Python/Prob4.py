#this one I'm happy with

a = b = [i for i in range(100,1000)]
m = set([])

for i in a:
	for j in b:
		m.add(i*j)
m = list(m)
m.sort()
m.reverse()

for i in m:
	if str(i) == str(i)[::-1]:
		print i
		break

