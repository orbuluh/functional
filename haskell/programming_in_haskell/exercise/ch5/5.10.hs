-- Modify the Caesar cipher program to also handle upper-case letters

import Data.Char -- ord etc comes from this lib

alphabet_2_int c | isLower c = ord c - ord 'a'
                 | isUpper c = 26 + ord c - ord 'A'
                 | otherwise = ord c


int_2_alphabet n | n < 26 = chr (ord 'a' + n)
                 | otherwise = chr (ord 'A' + n - 26)

shift n c
  | isLower c = int_2_alphabet ((alphabet_2_int c + n) `mod` 26)
  | isUpper c = int_2_alphabet (26 + ((alphabet_2_int c - 26 + n) `mod` 26))
  | otherwise = c

-- same as before
encode n xs = [shift n x | x <- xs]
-- same as before
percent n m = (fromIntegral n / fromIntegral m) * 100
-- same as before
count x xs = length [x' | x' <- xs, x == x']

-- same as before
freqs xs = [percent (count x xs) (length xs) | x <- ['a' .. 'z'] ++ ['A' .. 'Z']]

-- same as before
chisqr os es = sum [((o - e) ^ 2) / e | (o, e) <- zip os es]

-- same as before
rotate n xs = drop n xs ++ take n xs

-- same as before
positions x xs = [i | (x', i) <- zip xs [0 ..], x == x']

-- same as before
table_from_eng_dict =
  [ 8.1,
    1.5,
    2.8,
    4.2,
    12.7,
    2.2,
    2.0,
    6.1,
    7.0,
    0.2,
    0.8,
    4.0,
    2.4,
    6.7,
    7.5,
    1.9,
    0.1,
    6.0,
    6.3,
    9.0,
    2.8,
    1.0,
    2.4,
    0.2,
    2.0,
    0.1
  ]


-- assume upper case have similar distribution as lower case, just 1/6 times
-- likely to show up
table_from_eng_dict_with_upper_case =
  [5.0 * x / 6.0 | x <- table_from_eng_dict] ++ [x / 6.0 | x <- table_from_eng_dict]


-- basically the same except using different table
crack xs = encode (- factor) xs
  where
    factor = head (positions (minimum chitab) chitab)
    chitab = [chisqr (rotate n table') table_from_eng_dict_with_upper_case | n <- [0 .. 51]]
    table' = freqs xs

{-
*Main> crack (encode 5 "Hello Haskell Can you decode me")
"Hello Haskell Can you decode me"
-}