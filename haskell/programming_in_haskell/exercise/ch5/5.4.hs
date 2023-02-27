-- In a similar way to the function length, show how the library function
-- replicate :: Int -> a -> [a] that produces a list of identical elements
-- can be defined using a list comprehension.

replicate n val = [val | _ <- [1 .. n]]