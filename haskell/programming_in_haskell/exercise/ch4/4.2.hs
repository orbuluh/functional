-- Define a function third :: [a] -> a that returns the third element in a list
-- that contains at least this many elements using:
-- a. head and tail;
third_a xs = head (tail (tail xs))
-- b. list indexing !!;
third_b xs = xs !! 2
-- c. pattern matching
third_c (_:_:a:_) = a