--this WORKS for any number z, it just takes a long, long, long, long time.

grid (x,y) z 
	| x==z && y==z = 1
	| x==z = grid (x, y+1) z
	| y==z = grid (x+1, y) z
	| x==0 && y==0 = (grid (x+1, y) z) + (grid (x, y+1) z)
	| otherwise = (grid (x+1, y) z) + (grid (x, y+1) z)

--this also works, but I do not like it.
main = print $ product [21..40] `div` product [2..20]

