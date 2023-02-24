-- In a similar way to & & in section 4.4, show how the disjunction operator
-- `||` can be defined in four different ways using pattern matching.

(||) :: Bool -> Bool -> Bool
-- style 1
True || True = True
True || False = True
False || True = True
False || False = False
-- style 2
False || False = False
_ || _ = True
-- style 3
False || b = b
True || b = True
-- style 4
b || c | b == c = b
       | otherwise = True