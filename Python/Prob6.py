#as easy in python as it is in haskell
t = sum([i**2 for i in xrange(101)])
k = sum([i for i in xrange(101)])**2

print k-t