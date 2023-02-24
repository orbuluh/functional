-- Using library functions, define a function halve :: [a] -> ([a], [a]) that
-- splits an even-lengthed list into two halves. For example:
-- > halve [1,2,3,4,5,6]
-- ([1,2,3],[4,5,6])
halve xs = (take halfEle xs, drop halfEle xs)
           where halfEle = (length xs) `div` 2

halve_2 xs = splitAt halfEle xs
             where halfEle = (length xs) `div` 2s