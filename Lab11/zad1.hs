addMe1 :: Integer -> Integer -> Integer
addMe1 x y = (+) x  y
addMe2 :: Integer -> Integer -> Integer
addMe2 x y = x + y

main :: IO ()
main = do
  putStr "Sum of x + y = "
  --infix
  print(10 `addMe1` 25)
  putStr "Sum of x + y = "
  --prefix
  print(addMe2 10 25)
