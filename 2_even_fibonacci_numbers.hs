f :: [Int] -> Int -> [Int]
f all@(x:y:xs) maxn 
  | x+y > maxn = all
  | otherwise = f ((x+y):all) maxn

main = do
  putStrLn.unwords $ map show $ reverse $ f [2, 1] 4000000
  putStrLn.show $ sum $ (\xs -> [x|x<-xs, x `mod` 2 == 0])  $ reverse $ f [2, 1] 4000000
