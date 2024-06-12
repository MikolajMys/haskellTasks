items :: [String]
items = ["item1", "item2", "item3", "item4"]

combination :: [String] -> [(String, String)]
combination [] = []
combination (first:rest) = 
  [(first, x) | x <- (rest)] ++ combination rest

main :: IO()
main = do
  print(combination(items))
