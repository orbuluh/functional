-- A positive integer is perfect if it equals the sum of all of its factors,
-- excluding the number itself. Using a list comprehension and the function
-- factors, define a function perfects :: Int -> [Int] that returns the list of
-- all perfect numbers up to a given limit

factors x = [e | e <- [1 .. x - 1], x `mod` e == 0]
perfects x = [e | e <- [1 .. x], e == sum (factors e)]
