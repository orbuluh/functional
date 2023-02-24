-- The Luhn algorithm is used to check bank card numbers for simple errors such as
-- mistyping a digit, and proceeds as follows:

-- * consider each digit as a separate number;
-- * moving left, double every other number from the second last;
-- * subtract 9 from each number that is now greater than 9;
-- * add all the resulting numbers together;
-- * if the total is divisible by 10, the card number is valid.

-- Define a function luhnDouble :: Int -> Int that doubles a digit and subtracts
-- 9 if the result is greater than 9.

luhnDouble x = if y > 9 then y - 9 else y where y = 2 * x


-- Using luhnDoulbe and the integer remainder function mod, define a function
-- luhn :: Int -> Int -> Int -> Int -> Bool that decides if a four-digit
-- bank card number is valid.

luhn x = (a + b + c + d) `mod` 10 == 0
         where a = luhnDouble (x `div` 1000)
               b = (x `div` 100) - 10 * a
               c = luhnDouble ((x `div` 10) - 100 * a - 10 * b)
               d = x `mod` 10
