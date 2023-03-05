{-
Define the exponentiation operator ^ for non-negative integers using the same
pattern of recursion as the multiplication operator *, and show how the
expression 2 ^ 3 is evaluated using your definition.
-}

(^) _ 0 = 1
(^) a b | a < 0 = error "a should >= 0"
        | b > 0  = a * (a Main.^ (b - 1))
        | b < 0 = error "b should >= 0"