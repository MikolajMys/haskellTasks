fib :: Integer -> Integer

fib x
  | x <= 2 = 1
  | otherwise = fib (x - 1) + fib ( x - 2)
  
main = do 
  print(fib 6)
