import Data.List.Split
--^lolololol
t = show (2^1000)

sum' c = foldl1 (+) c
--^I don't even need this. I did when I started, but I do not any more.
main = print $ sum . map (\t -> read t::Int) . tail $ splitOn "" t