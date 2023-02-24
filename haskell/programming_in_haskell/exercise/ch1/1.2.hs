-- Show that s u m [ x ] “ x for any number x.
-- sum [] = 0
-- sum (n:ns) = n + sum ns

sum[x]
= sum(x:[]) = x + sum [] = x + 0 = x