main = do
  let n = 1000
  print $ sum [x|x<-[1..n], x `mod` 3 == 0 || x `mod` 5 == 0 && x /= n]
