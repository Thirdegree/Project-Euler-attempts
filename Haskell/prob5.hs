--works, but takes a long time

t = [x | x<-[1..], let y = [1..20], all (\t -> x `mod` t == 0) y]

main = print t

--works quickly, but feels like cheating the heart of project euler.

foldr1 lcm [1..20]