square x = x*x

t = (square $ sum [1..100]) - (sum [x^2 | x<-[1..100]])

main = print t