secondLast :: [a] -> a
secondLast as
  | l == 2 = head as
  | otherwise = secondLast $ tail as
  where l = length as
