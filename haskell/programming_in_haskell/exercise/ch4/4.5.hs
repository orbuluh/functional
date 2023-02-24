-- Without using any other library functions or operators, show how the meaning
-- of the following pattern matching definition for logical conjunction && can
-- be formalized using conditional expressions:
-- True && True = True
-- _ && _ = False

(&&) a b = if a == b then (if a then True else False) else False