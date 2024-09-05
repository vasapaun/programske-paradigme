module Lib where

proizvodCifara :: Int -> Int
proizvodCifara 0 = 1
proizvodCifara n = (n `mod` 10) * proizvodCifara (n `div` 10)

magicniParovi :: [Int] -> [(Int, Int)]
magicniParovi = map (\ x -> (x, proizvodCifara x))
