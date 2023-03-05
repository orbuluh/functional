{-

Using the five-step process, construct the library functions that:

a. calculate the sum of a list of numbers;
b. take a given number of elements from the start of a list;
c. select the last element of a non-empty list.

-}

sum' [] = 0
sum' (x:xs) = x + sum xs


take' 0 _ = []
take' n [] = error "not enough elements"
take' n (x:xs) = [x] ++ (take' (n - 1) xs)

last' [] = error "empty list"
last' [x] = x
last' (x:xs) = last' xs
