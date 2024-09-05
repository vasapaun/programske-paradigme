module Lib where

import Data.Char
import GHC.Unicode

broj :: String -> Bool
broj "" = True
broj (x:xs) = isDigit x && broj xs

mala :: String -> Bool
mala "" = True
mala (x:xs) = isLower x && mala xs

sifruj :: [String] -> [String]
sifruj [] = []
sifruj (x:xs)
              | broj x      = ("C" ++ x ++ "C") : sifruj xs
              | mala x      = ("M" ++ x ++ "M") : sifruj xs
              | otherwise   = ("O" ++ x ++ "O") : sifruj xs

cifre :: Num a => String -> a
cifre "" = 0 
cifre (x:xs)
            | isDigit x = 1 + cifre xs
            | otherwise = cifre xs

male :: String -> Int
male = length . filter isLower

azuriraj :: String -> String
azuriraj (x:xs)
                | isDigit x = drop (cifre (x:xs)) (x:xs)
                | isLower x = drop (male  (x:xs)) (x:xs)

desifruj :: [String] -> [String]
desifruj = map azuriraj
