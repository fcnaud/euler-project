
myGcd :: Int -> Int -> Int
myGcd n m
  | n `mod` m == 0 = m
  | otherwise = myGcd m (n`mod`m)

myLcm :: Int -> Int -> Int
myLcm n m = (n * m) `div` (myGcd n m) 

main = 
  print $ foldl myLcm 1 [2..20]
