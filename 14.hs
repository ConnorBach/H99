dupli :: [a] -> [a]
dupli [] = []
dupli x = concatMap dupliHelper x

dupliHelper :: a -> [a]
dupliHelper x = [x, x]
