colors :: [String]
colors = ["black", "white", "blue", "yellow", "red"]

combination :: [String] -> [(String, String)]
combination [] = []
combination (first:rest) = 
  [(first, x) | x <- (rest)] ++ combination rest

main :: IO()
main = do
  print(combination(colors))
