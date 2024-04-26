import System.IO

type Poeni = [Double]
type Mesto = [Char]
type Mesta = [[Char]]
type Takmicar = [Char]
type Takmicari = [Takmicar]

poeniToMesto :: Double -> Mesto
poeniToMesto x
    | x >= 91   = "prvo"
    | x >= 81   = "drugo"
    | x >= 71   = "trece"
    | otherwise = "pohvala"

rezultati :: Poeni -> Mesta
rezultati = map poeniToMesto

takmicar :: Takmicari -> Poeni -> [(Takmicar, Mesto)]
takmicar imena poeni = zip imena (rezultati poeni)

najbolji :: [([Char], [Char])] -> [[Char]]
najbolji rezultati
    | not (null prvoMesto) = prvoMesto
    | not (null drugoMesto) = drugoMesto
    | not (null treceMesto) = treceMesto
    | otherwise = []
    where
        prvoMesto = [ime | (ime, "prvo") <- rezultati]
        drugoMesto = [ime | (ime, "drugo") <- rezultati]
        treceMesto = [ime | (ime, "trece") <- rezultati]
