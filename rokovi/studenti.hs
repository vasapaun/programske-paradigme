module Lib where
import Data.Ord (comparing)
import Data.Foldable (maximumBy)
import Data.List as List (sortBy, sort)

data Student = MkStudent {ime :: String, poeni :: Int} deriving Show

instance Eq Student where
    s1 == s2 = poeni s1 == poeni s2

instance Ord Student where
    s1 <= s2 = poeni s1 <= poeni s2
    s1 >= s2 = poeni s1 >= poeni s2

polozili :: [(String, Int)] -> [String]
polozili rez = map fst $ filter (\ x -> snd x > 50) rez

najbolji :: [(String, Int)] -> String
najbolji list = fst $ maximumBy (comparing snd) list

ocenaNaIspitu :: (String, Int) -> Int
ocenaNaIspitu rez = snd rez `div` 10

prosek :: [(String, Int)] -> Float
prosek rezultati = fromIntegral (sum (map ocenaNaIspitu rez)) / fromIntegral (length rez) where
    rez = filter (\ x -> snd x > 50) rezultati

rangLista :: [Student] -> [Student]
rangLista = List.sortBy (flip compare)

studentPao :: Student -> Bool
studentPao student
    | poeni student < 51 = True
    | otherwise = False

ocenaStudenta :: Student -> Int 
ocenaStudenta student 
    | poeni student == 100 = 10 
    | studentPao student = 5 
    | otherwise = (poeni student - 1) `div` 10


poeniStudenata :: [Student] -> [(String, Maybe Int)]
poeniStudenata = map tmp where
                            tmp student
                                | studentPao student = (ime student, Nothing)
                                | otherwise = (ime student, Just (ocenaStudenta student))
