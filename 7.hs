data NestedList a = Elem a | List [NestedList a]

myFlat :: NestedList a -> [a]
myFlat (List []) = []
myFlat (Elem x) = [x]
myFlat (List (x:xs)) = myFlat x ++ myFlat (List xs)
