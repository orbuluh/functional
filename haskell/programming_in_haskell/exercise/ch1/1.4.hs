-- How should the definition of the function qsort be modified so
-- that it produces a reverse sorted version of a list

qsort [] = []
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
               where
                smaller = [a | a <- xs, a <= x]
                larger  = [b | b <- xs, b  > x]