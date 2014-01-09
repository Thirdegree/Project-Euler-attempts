--takes a while, but gets there eventually
isTrip a b c = (a^2 +b^2 == c^2) && (a<b && b<c)

sum' a b c = a+b+c==1000

t = [a*b*c | a<-[1..1000], b<-[1..1000], c<-[1..1000], isTrip a b c, sum' a b c]

main = print $ head t