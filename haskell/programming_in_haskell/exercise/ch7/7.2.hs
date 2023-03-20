{-
Without looking at the definitions from the standard prelude, define the
following higher-order library functions on lists.
-}

-- a. Decide if all elements of a list satisfy a predicate:

all :: (a -> Bool) -> [a] -> Bool
all pred =  and . map pred

all' pred = foldr (\x y -> pred x && y) True


-- b. Decide if any element of a list satisfies a predicate:

any :: (a -> Bool) -> [a] -> Bool
any pred = or . map pred

any' pred = foldr (\x y -> pred x || y) False