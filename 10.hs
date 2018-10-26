myGroup :: Eq a => [a] -> [[a]]
myGroup []  = []
myGroup [x] = [[x]]
myGroup (x:xs) = if x `elem` (head (myGroup xs))
                 then ((x : (head (myGroup xs))) : (tail (myGroup xs)))
                 else [x] : myGroup xs

encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode [x] = [(1, x)]
encode x = zip c letter 
         where c = map length $ myGroup x
               letter = map head $ myGroup x
