module Lib where

prosekOcena :: (Real a) => [a] -> Float
prosekOcena ocene = realToFrac(sum ocene) / realToFrac(length ocene)

prosekOdlicni :: [[Int]] -> Float
prosekOdlicni ocene = prosekOcena 
                      $ filter (> 4.5)
                      $ map prosekOcena ocene
