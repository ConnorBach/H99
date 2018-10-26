myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

checkPal :: Eq a => [a] -> Bool
checkPal a = (a == myReverse a)
