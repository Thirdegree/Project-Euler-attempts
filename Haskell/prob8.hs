toList :: String -> String
toList (x:xs) 
	| length xs == 0 = x
	| otherwise = x:(toList xs)