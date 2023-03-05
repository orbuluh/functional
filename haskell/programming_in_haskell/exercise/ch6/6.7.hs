{-
Define a recursive function merge :: Ord a => [a] -> [a] -> [a] that
merges two sorted lists to give a single sorted list. For example:

> merge [2,5,6] [1,3,4]
[1,2,3,4,5,6]

Note: your definition should not use other functions on sorted lists such as
insert or isort, but should be defined using explicit recursion
-}

merge [] x = x
merge x [] = x
merge (a : xa) (b : xb) | a <= b = [a] ++ merge xa (b:xb)
                        | otherwise = [b] ++ merge (a:xa) xb
