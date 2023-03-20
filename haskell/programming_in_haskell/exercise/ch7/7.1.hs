{-
Show how the list comprehension  [f x | x <- xs, p x]
can be re-expressed using the higher-order functions map and filter
-}

-- The `, p x` usage is the guards syntax for list comprehension
-- it can filter the values produced by earlier generators.
-- e.g. imagine p is something take one element and return true
-- so the resulting function should look like:

map f (filter p xs)