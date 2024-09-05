import System.IO

data Pravougaonik = MkPravougaonik { a :: Int, b :: Int }

instance Show Pravougaonik where
    show (MkPravougaonik a b) = 
        "(" ++ show a ++ "," ++ show b ++ ")"

instance Eq Pravougaonik where
    (==) (MkPravougaonik a1 b1) (MkPravougaonik a2 b2) =
        a1 == a2 && b1 == b2 || a1 == b2 && b1 == a2 
