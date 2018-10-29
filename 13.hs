import Data.List

data ListItem a = Single a | Multiple Int a
encodeDirect :: Eq a => [a] -> [ListItem a]
encodeDirect x = map encodeList $ group x

encodeList :: Eq a => [a] -> ListItem a
encodeList x
    | cnt == 1 = Single letter
    | otherwise = Multiple cnt letter 
    where cnt = length x
          letter = head x
