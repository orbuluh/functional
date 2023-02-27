-- Show how the list comprehension [(x,y)| x <- [1,2], y <- [3,4]] with two
-- generators can be re-expressed using two comprehensions with single
-- generators. Hint: nest one comprehension within the other and make use of the
-- library function concat :: [[a]] -> [a]

-- > [(x,y)| x <- [1,2], y <- [3,4]]
-- [(1,3),(1,4),(2,3),(2,4)]


-- > [(1, y) | y <- [3, 4]]
-- [(1,3),(1,4)]
--                         v  first list comprehension
--                                        v second list comprehension
-- > [[(x, y) | y <- [3, 4]] | x <- [1, 2]]
-- [[(1,3),(1,4)],[(2,3),(2,4)]]
-- > concat [[(1,3),(1,4)],[(2,3),(2,4)]]
-- [(1,3),(1,4),(2,3),(2,4)]

concat xss = [x | xs <- xss, x <- xs]
gen = concat [[(x, y) | y <- [3, 4]] | x <- [1, 2]]
