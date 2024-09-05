{-# LANGUAGE TupleSections #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use infix" #-}

module Lib where

import Data.Maybe
import Data.List as List (elemIndex, sortBy)

data StepenStudija = Osnovne | Master | Doktorske deriving (Show, Eq)

data Student = MkStudent { indeks :: String, ime :: String, prezime :: String, stepen :: StepenStudija }

instance Eq Student where
    s1 == s2 = indeks s1 == indeks s2

data KratkiStepenStudija where
  Kratko :: StepenStudija -> KratkiStepenStudija

instance Show KratkiStepenStudija where
    show (Kratko Osnovne)   = "BSc"
    show (Kratko Master)    = "MSc"
    show (Kratko Doktorske) = "PhD"

type Rezultat = (Student, Maybe Int)

rezultati :: [Student] -> [Rezultat]
rezultati = map (, Nothing)

poeni :: Student -> [Rezultat] -> Either String (Maybe Int)
poeni s rezultati =
    case mi of Nothing  -> Left $ indeks s ++ " ne studira"
               (Just i) -> Right $ snd $ rezultati !! i
    where mi = List.elemIndex s $ map fst rezultati

ponisti :: Student -> [Rezultat] -> [Rezultat]
ponisti s = foldr azuriraj []
    where azuriraj rez acc = if fst rez == s then (s, Nothing) : acc
                                             else rez : acc

ponistiSve :: [Rezultat] -> [Rezultat]
ponistiSve = map (\ rez -> (fst rez, Nothing))

studije :: StepenStudija -> [Rezultat] -> [Rezultat]
studije step = filter (\(s, _) -> stepen s == step)

polozeni :: [Rezultat] -> [Rezultat]
polozeni = filter (\ (_, rez) -> izvuciRez rez > 50)
    where izvuciRez Nothing = 0
          izvuciRez (Just rez) = rez

upisi :: Student -> Int -> [Rezultat] -> [Rezultat]
upisi s p rezultati = if elem s studenti
                      then foldr azuriraj [] rezultati
                      else (s, Just p) : rezultati
    where studenti = map fst rezultati
          azuriraj rez acc = if fst rez == s then (s, Just p) : acc
                                             else rez : acc

najboljih :: Int -> [Rezultat] -> [Int]
najboljih n rezultati = take n
                      $ List.sortBy (flip compare)
                      $ map (\ (Just x) -> x)
                      $ filter (Nothing /=)
                      $ map snd rezultati
