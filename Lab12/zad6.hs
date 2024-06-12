--a)    
append :: [x] -> [x] -> [x]
append [] [] = []
append l m = l ++ m

--b)
member :: Eq x => x -> [x] -> Bool
member x [] = False
member x (first:rest) = x == first || member x rest
  -- if x == first
  --   then True
  -- else member x rest
  
--c)
last :: [x] -> x
last [] = error "pusta lista!"
last [x] = x
last (first:rest) = Main.last rest

--d)
delete :: Eq x => x -> [x] -> [x]
delete x [] = []
delete x (first:rest)
  -- if x == first 
  --   then rest
  -- else first:delete x rest
  | x == first = rest
  | otherwise = first:delete x rest
  
--e)
split :: Ord x => x -> [x] -> ([x],[x])
split x [] = ([],[])
split x (first:rest) = 
  if x > first
    then (first:l1, l2)
  else
    (l1,first:l2)
  where
    (l1,l2) = split x rest

main :: IO()
main = do
  print(append [1,2] [3,4])
  print(member 3 [1,2,3,4,6])
  print(Main.last [1,2,3,4,6])
  print(delete 3 [1,2,3,4,6])
  print(split 3 [1,2,3,4,6])
