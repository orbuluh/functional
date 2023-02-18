-- Define a function product that produces the product of a list of
-- numbers, and show using your definition that product [2,3,4] = 24.
product [] = 1
product (n:ns) = n * product ns

product [2,3,4]
= 2 * product [3, 4]
= 2 * 3 * product [4]
= 2 * 3 * 4 * product []
= 2 * 3 * 4 * 1 = 24