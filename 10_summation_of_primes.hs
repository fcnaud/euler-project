
getPrimes (x:xs) = x : getPrimes [y|y<-xs, y`mod`x/=0]

main = do
  print $ sum $ takeWhile (\x -> x<=200000) $ getPrimes [2..]
