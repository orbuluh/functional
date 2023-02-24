-- Consider a function `safetail :: [a] -> [a]` that behaves in the same way as
-- `tail` except that it maps the empty list to itself rather than producing an
-- error. Using `tail` and the function `null :: [a] -> Bool that decides if a
-- list is empty or not, define `safetail` using:
-- a. a conditional expression;
safetail_a xs = if null xs then [] else (tail xs)
-- b. guarded equations;
safetail_b xs | null xs = []
              | otherwise = tail xs
-- c. pattern matching
safetail_c (_:xs) = xs
safetail_c [] = []