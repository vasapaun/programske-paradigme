module Lib where

import Data.Ord


znakUVrednost :: Char -> Int
znakUVrednost z
    | z == 'H' = 0
    | z == 'K' = 1
    | z == 'P' = 2
    | z == 'T' = 3

data Karta = MkKarta {vrednost :: Int, znak :: Char}

instance Eq Karta where
    k1 == k2 = znak k1 == znak k2 && vrednost k1 == vrednost k2

instance Ord Karta where
    k1 <= k2 
        | vrednost k1 == vrednost k2 = (znakUVrednost (znak k1) - znakUVrednost (znak k2)) <= 0
        | otherwise = vrednost k1 <= vrednost k2
    k1 >= k2 
        | vrednost k1 == vrednost k2 = (znakUVrednost (znak k1) - znakUVrednost (znak k2)) >= 0
        | otherwise = vrednost k1 >= vrednost k2


