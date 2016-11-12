import Data.List

judge :: Int -> Bool
judge n = 
  let s = show n 
  in s == reverse s

main = do
  print.head $ reverse $ sort [x*y|x<-[1..999], y<-[1..999], judge (x*y)]
