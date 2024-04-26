import System.IO

enumeracija :: [Int] -> [(Int, Int)]
enumeracija = zip [1..]

redniBrojevi :: [(Int, Int)] -> [Int]
redniBrojevi = map fst 

filtriraniParovi :: Int -> [(Int, Int)] -> [(Int, Int)]
filtriraniParovi cilj = filter (\(_, broj) -> broj == cilj)

bacanja :: Int -> [Int] -> [Int]
bacanja cilj kockice = redniBrojevi (filtriraniParovi cilj (enumeracija kockice))

kockica ::  Int -> [Int] -> [Char]
kockica cilj kockice
    | any (\x -> odd cilj == odd x) (bacanja cilj kockice) = "Jana"
    | otherwise = "Marija"
