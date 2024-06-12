tabliczka :: [(Integer, Integer, Integer)]
tabliczka = [(x, y, x * y) | x <- [1..12], y <- [1..12]]

main :: IO()
main = do
  print(tabliczka)
