rev1 :: [a] -> [a]
rev1 [] = []
rev1 (first:rest) = rev1 rest ++ [first]

--O(n)
rev2 :: [a] -> [a]
rev2 x = rev' x []

rev' :: [a] -> [a] -> [a]
rev' [] m = m
rev' (first:rest) n = rev' rest (first:n)

main :: IO()
main = do
  print(rev1 [1, 2, 3, 4])
  print(rev2 [1, 2, 3, 4])
