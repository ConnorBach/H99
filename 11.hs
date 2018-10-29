myGroup :: Eq a => [a] -> [[a]]
myGroup []  = []
myGroup [x] = [[x]]
myGroup (x:xs) = if x `elem` (head (myGroup xs))
                 then ((x : (head (myGroup xs))) : (tail (myGroup xs)))
                 else [x] : myGroup xs

encode :: Eq a => [a] -> [Either a (Int, a)]
encode [] = []
encode x = map encode2 $ zip c letter 
         where c = map length $ myGroup x
               letter = map head $ myGroup x

encode2 :: (Int, a) -> Either a (Int, a)
encode2 x
    | fst x == 1 = Left (snd x)
    | otherwise =  Right x
