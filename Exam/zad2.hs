nwd :: Int -> Int -> Int
nwd 0 0 = 0
nwd a b
  -- if b == 0
  --   then a
  -- else
  --   nwd b (a `mod` b)
  | b == 0 = a
  | otherwise = nwd b (a `mod` b)

main :: IO ()
main = do
  print(nwd 35 77)
