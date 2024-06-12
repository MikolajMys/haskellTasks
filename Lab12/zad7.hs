filter :: (x -> Bool) -> [x] -> [x]
filter x [] = []
filter x (first:rest)
  -- if x first
  --   then first:filtred
  -- else 
  --   filtred
  -- where
  --   filtred = Main.filter x rest
  | x first = first:filtred
  | otherwise = filtred
  where
    filtred = Main.filter x rest

main :: IO()
main = do
  print(Main.filter (5 >) [1,2,3,4,5,6,7])
