{-

Using merge, define a function msort :: Ord a = > [a] -> [a] that implements
merge sort, in which the empty list and singleton lists are already sorted, and
any other list is sorted by merging together the two lists that result from
sorting the two halves of the list separately.

Hint: first define a function halve :: [a] -> ([a], [a]) that splits a list
into two halves whose lengths differ by at most one.

-}

merge [] x = x
merge x [] = x
merge (a : xa) (b : xb) | a <= b = [a] ++ merge xa (b:xb)
                        | otherwise = [b] ++ merge (a:xa) xb

halve xs = (take n xs, drop n xs)
           where n = (length xs) `div` 2
msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
           where (left, right) = halve xs