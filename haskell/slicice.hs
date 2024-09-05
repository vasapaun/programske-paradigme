module Lib where 

brisiPonavljanja :: [Int] -> [Int]
brisiPonavljanja [] = []
brisiPonavljanja (x:xs) = x : brisiPonavljanja(dropWhile(==x) xs)
