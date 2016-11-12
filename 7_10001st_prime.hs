main = do
  let primes = 2:f[3,5..] where f (x:xs) = x:f [y|y<-xs, y`mod`x/=0]
  print.last $ take 10001 primes
