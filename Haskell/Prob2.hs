fib :: [Integer]
fib = 0:1:zipWith (+) fib (tail fib)

t = [x|x<-fib, x `mod` 2 == 0]

main = print (sum $ takeWhile (<4000000) t)