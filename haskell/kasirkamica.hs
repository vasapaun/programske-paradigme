module Lib where

podliste :: Eq a => [a] -> [[a]]
podliste [] = []
podliste (x:xs) = (x : takeWhile (== x) xs) : podliste (dropWhile (== x) xs)
