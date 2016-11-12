f :: Int -> Int -> Int
f n m 
  | n <= m = n
  | n `mod` m == 0 = f (n `div` m) m
  | otherwise = f n (m+1)

main = do
  n <- readLn :: IO Int
  print $ f n 2
