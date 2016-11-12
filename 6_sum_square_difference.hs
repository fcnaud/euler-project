main = do
  print (b*b-a)
  where 
    b = sum [1..100]
    a = sum $ map (\x -> x*x) [1..100]
