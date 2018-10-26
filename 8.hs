 uniq :: Eq a => [a] -> [a]
 uniq (x:xs)
    | (xs == [])      = [x]
    | (x == head xs)  = uniq xs
    | (x /= head xs)  = [x] ++ uniq xs
    | otherwise       = []
