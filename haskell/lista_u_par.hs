module Lib where 

listaUPar :: [(a,b)] -> ([a],[b])
listaUPar [] = ([],[])
listaUPar lista = foldr (\ (a,b) (c,d) -> (a:c, b:d)) ([],[]) lista
