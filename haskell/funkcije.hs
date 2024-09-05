proizvodPrvih :: Integer -> Integer
proizvodPrvih 1 = 1
proizvodPrvih a = a * proizvodPrvih (a - 1)

prost :: Int -> Bool
prost n = prostTest n 2
  where prostTest n k
         | n == k = True
         | n `mod` k == 0 = False
         | otherwise = prostTest n (k+1)

tipJednacine :: Int -> Int -> Int -> String
tipJednacine a b c
    | a == 0 = "Degenerisana"
    | (b*b - 4*a*c) == 0 = "Jedno resenje"
    | (b*b - 4*a*c) > 0 = "Dva resenja"
    | otherwise = "Nema resenja"

ceoDeo :: Int -> Int
ceoDeo n = ceoDeoTest n 0
  where ceoDeoTest n k
         | (k * k) < n = ceoDeoTest n (k+1)
         | (k * k) == n = k
         | otherwise = k - 1

harm :: Int -> [Double]
harm n
    | n == 1 = [1]
    | otherwise = harm (n-1) ++ [recip n']
    where n' = fromIntegral n

nadjiDelioc :: Int -> Int
nadjiDelioc n = nadjiSledeciDelioc n 2
  where nadjiSledeciDelioc n k
         | n == 1 = 1
         | n `mod` k == 0 = k
         | otherwise = nadjiSledeciDelioc n (k+1)

delioci :: Int -> [Int]
delioci 1 = []
delioci 0 = []
delioci n = delioc : delioci (n `div` delioc)
  where delioc = nadjiDelioc n

suma :: [Int] -> Int
suma [n] = n
suma (h:t) = h + suma t
