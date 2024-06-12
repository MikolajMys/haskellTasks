sumList :: [Integer] -> Integer
sumList [] = 0
sumList (first:rest) = first + sumList rest

main :: IO ()
main = do
  print(sumList [1,2,3])
