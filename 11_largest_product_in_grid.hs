import Data.Char

f' :: [[Int]] -> Int -> Int -> (Int, Int) -> (Int, Int) -> Int -> Int -> Int
f' myData n m (x, y) (dx, dy) lim cur
  | (x<0) || (x>=n) || (y<0) || (y>=m) = 0
  | cur == lim = curData
  | curData == 0 = 0
  | otherwise = curData * (f' myData n m (x+dx, y+dy) (dx, dy) lim (cur+1))
  where curData = myData!!x!!y

f :: [[Int]] -> Int -> Int -> (Int, Int) -> Int
f myData n m (x, y) = 
  maximum $ map (\f -> f 4 1) $ map (f' myData n m (x, y)) [ (1, 1), (1, 0), (0, 1), (1, -1)]

solve :: [[Int]] -> Int
solve myData = do
  let n = length myData
      m = length (myData!!1)
      tryList = [(x, y)|x<-[0..(n-1)], y<-[0..(m-1)]]
  maximum $ map (f myData n m) tryList

main = do
  cont <- getContents
  let myData = map (\xs -> map (read::String -> Int) xs) $ map words $ lines cont
  mapM_ print  myData
  print $ solve myData
