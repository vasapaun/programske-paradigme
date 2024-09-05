module Lib where 

ucesljaj :: [a] -> [a] -> [a]
ucesljaj [] [] = []
ucesljaj (h1:xs1) (h2:xs2) = h1 : h2 : ucesljaj xs1 xs2
