data ListItem a = Single a | Multiple Int a
decode :: Eq a => [ListItem a] -> [a]
decode x = concat $ map decodeHelper x

decodeHelper (Single x) = [x]
decodeHelper (Multiple n x) = replicate n x
