import System.IO

--------------------------------------------------------------------------------------------

uproseciNiz :: (Fractional a, Ord a) => [a] -> a
uproseciNiz lista = sum lista / fromIntegral (length lista)

uproseciMatricu :: (Fractional a, Ord a) => [[a]] -> [a]
uproseciMatricu = map uproseciNiz

izdvojiOdlicne :: (Fractional a, Ord a) => [a] -> [a]
izdvojiOdlicne = filter (>= 4.5)

prosekOdlicni :: (Fractional a, Ord a) => [[a]] -> a
prosekOdlicni matrica = uproseciNiz (izdvojiOdlicne (uproseciMatricu matrica))

--------------------------------------------------------------------------------------------

pozicije :: Eq s => s -> [s] -> [Int]
pozicije boja lista = map fst (filter (\(_, drugi) -> drugi == boja) (zip [0..] lista))

--------------------------------------------------------------------------------------------


