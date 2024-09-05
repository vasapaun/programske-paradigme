{-# LANGUAGE TupleSections #-}

module Lib where

import Data.List as List(elemIndex, sortBy)
import Data.Maybe

data StepenStudija = Osnovne | Master | Doktorske

data Student = MkStudent { indeks :: String, ime :: String, prezime :: String, stepen :: StepenStudija}

instance Eq Student where
    s1 == s2 = indeks s1 == indeks s2

data KratkiStepenStudija where
    Kratko :: StepenStudija -> KratkiStepenStudija

instance Show KratkiStepenStudija where
    show (Kratko Osnovne)   = "BSc"
    show (Kratko Master)    = "MSc"
    show (Kratko Doktorske) = "PhD"

formatirajStudenta :: Student -> String
formatirajStudenta s =
    let id = indeks s
        ip = ime s ++ " " ++ prezime s
        ss = show $ Kratko $ stepen s
    in id ++ " : " ++ ip ++ " : " ++ ss

instance Show Student where
    show = formatirajStudenta

type Rezultat = (Student, Maybe Int)

rezultati :: [Student] -> [Rezultat]
rezultati = map (, Nothing)

poeni :: Student -> [Rezultat] -> Either String (Maybe Int)
poeni s rez =
    case mi of Nothing -> Left $ indeks s ++ " ne studira"
               (Just i) -> Right $ snd $ rez !! i
    where mi = List.elemIndex s $ map fst rez

ponisti :: Student -> [Rezultat] -> [Rezultat]
ponisti s = foldr azuriraj []
    where azuriraj rez acc = if fst rez == s then (s, Nothing) : acc
                                             else rez : acc


