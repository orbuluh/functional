{-
How does the recursive version of the factorial function behave if applied to a
negative argument, such as (-1)? Modify the definition to prohibit negative
arguments by adding a guard to the recursive case.
-}

-- If not handling negative case, it will go into infinite loop and eventually
-- ghci throw error for stack overflow

fac :: Int -> Int
fac 0 = 1                   -- base case
fac n = n * fac (n - 1)
-- fac n | n > 0 = n * fac(n - 1)      -- recursive case
--      | otherwise = error "input should >= 0"