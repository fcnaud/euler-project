import Data.Char

f :: [Int] -> Int -> Int
f myData n = product [myData!!(n+x)|x<-[0..12]]

main = do
  cont <- getContents
  let myData = concat $ map (\xs -> map digitToInt xs) $ lines cont
  print.maximum $ map (f myData) [0..(length myData - 13)]
