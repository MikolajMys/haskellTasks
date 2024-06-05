solve1 :: Float -> Float -> Float -> (Float, Float)
solve1 a b c = 
  if delta >= 0
    then ((-b + sqrt delta) / (2 * a),
          (-b - sqrt delta) / (2 * a))
    else error "Brak rozwiazan rzeczywistych"
  where 
    delta = b^2 - 4 * a * c
  
solve2 :: Float -> Float -> Float -> (Float, Float)
solve2 a b c
  | delta >= 0 = ((-b + sqrt delta) / (2 * a),
                  (-b - sqrt delta) / (2 * a))
  | otherwise = error "Brak rozwiazan rzeczywistych"
  where 
    delta = b^2 - 4 * a * c

main = do 
  print(solve1 1 10 3)
  print(solve2 1 10 3)
