myLast :: [a] -> a
myLast a
  | l == 1        = head a
  | otherwise     = myLast $ tail a
  where l = length a
