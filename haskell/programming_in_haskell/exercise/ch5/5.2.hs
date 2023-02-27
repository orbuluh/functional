-- Suppose that a coordinate grid of size m x n is given by the list of
-- all pairs (x, y) of integers such that 0 <= x <= m and 0 <= y <= n.
-- Using a list comprehension, define a function
-- grid :: Int -> Int -> [(int, int)]
-- that returns a coordinate grid of a given size.

grid m n = [(x, y) | x <- [0..m], y <- [0..n]]