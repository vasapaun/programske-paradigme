module Lib where

brojObrnut :: Num a => [a] -> a
brojObrnut [] = 0
brojObrnut (x:xs) = brojObrnut xs * 10 + x

broj :: Num a => [a] -> a
broj [] = 0
broj (x:xs) = x * 10^length xs + broj xs
