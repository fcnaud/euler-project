main = do
  print $ map (\(x, y, z) -> x*y*z) [(x, y, z)|x<-[1..(1000`div`3)], y<-[1..(1000`div`2)], let z=1000-x-y,  x<y && (1000-x-y)>y && x^2 + y^2 == z^2]
