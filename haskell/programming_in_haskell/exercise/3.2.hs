-- Write down definitions that have the following types

-- bools :: [Bool]
bools = [False, True]
-- nums :: [[Int]]
nums = [[1, 2], [3, 4]]
-- add :: Int -> Int -> Int -> Int
add x y z = x + y + z
-- copy :: a -> (a, a)
copy x = (x, x)
-- apply :: (a -> b) -> a -> b
apply f x = f x