{-
Define a recursive function euclid :: Int -> Int -> Int that implements
Euclid’s algorithm for calculating the greatest common divisor of two
nonnegative integers: if the two numbers are equal, this number is the result;
otherwise, the smaller number is subtracted from the larger, and the same
process is then repeated. For example:
> euclid 6 27
3
-}

euclid _ 1 = 1
euclid 1 _ = 1
euclid a b | a < 0 || b < 0 = error "a, b should >= 0"
           | a == b = a
           | a < b = euclid (b - a) a
           | otherwise = euclid (a - b) b