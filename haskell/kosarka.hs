module Lib where 

parOdListi :: [a] -> [b] -> [(a,b)]
parOdListi [] [] = []
parOdListi (h1:xs1) (h2:xs2) = (h1, h2) : parOdListi xs1 xs2
