-- A triple (x, y, z) of positive integers is Pythagorean if it satisfies the
-- equation x^2 + y^2 = z^2. Using a list comprehension with three generators,
-- define a function
-- pyths :: Int -> [(Int, Int, Int)] that returns the list of all such
-- triples whose components are at most a given limit

pyths lmt = [(x, y, z) | x <- [1 .. lmt], y <- [1 .. lmt], z <- [1 .. lmt], x^2 + y^2 == z^2]