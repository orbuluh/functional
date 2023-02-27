-- Using a list comprehension, give an expression that calculates the
-- sum of n^2 for n in [1..100]

sum [x^2 | x <- [1 .. 100]]