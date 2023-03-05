{-

Without looking at the definitions from the standard prelude, define the
following library functions on lists using recursion.

Note: most of these functions are defined in the prelude using other library
functions rather than using explicit recursion, and are generic functions rather
than being specific to the type of lists
-}

-- a. Decide if all logical values in a list are True:
-- and :: [Bool] -> Bool

and' [True] = True
and' [] = error "list should not be empty"
and' (x:xs) = x && (and' xs)

-- b. Concatenate a list of lists:
-- concat ::[[a]] -> [a]

concat' [] = []
concat' [x] = x
concat' (x:xs) = x ++ concat' xs

-- c. Produce a list with n identical elements:
-- replicate :: Int -> a -> [a]

replicate' 0 _ = []
replicate' n x | n > 0 = [x] ++ replicate' (n - 1) x
               | otherwise = error "n should >= 0"

-- d. Select the nth element of a list:
-- (!!) :: [a] -> Int -> a

(!!) (x:_) 0 = x
(!!) [] _ = error "not enough element to select"
(!!) (_:xs) n = (Main.!!) xs (n - 1)

-- e. Decide if a value is an element of a list:
-- elem :: Eq a => a -> [a] -> Bool

elem' _ [] = False
elem' a (x:xs) = a == x || elem' a xs
