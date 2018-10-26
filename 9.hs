myGroup :: Eq a => [a] -> [[a]]
myGroup []  = []
myGroup [x] = [[x]]
myGroup (x:xs) = if x `elem` (head (myGroup xs))
                 then ((x : (head (myGroup xs))) : (tail (myGroup xs)))
                 else [x] : myGroup xs
