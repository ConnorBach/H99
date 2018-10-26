sizeList :: [a] -> Int
sizeList [] = 0
sizeList a = 1 + (sizeList $ tail a)
