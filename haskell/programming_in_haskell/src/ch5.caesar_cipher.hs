-- code from notes/5.list_comprehensions.md
import Data.Char -- ord etc comes from this lib

lower_2_Int c = ord c - ord 'a'

int_2_lower :: Int -> Char
int_2_lower n = chr (ord 'a' + n)

shift n c
  | isLower c = int_2_lower ((lower_2_Int c + n) `mod` 26)
  | otherwise = c

encode n xs = [shift n x | x <- xs]

-- fromIntegral: convert int to float
percent n m = (fromIntegral n / fromIntegral m) * 100

-- percent 5 15 get a 33.333336

count x xs = length [x' | x' <- xs, x == x']

-- build the distribution of each char in xs
freqs xs = [percent (count x xs) (length xs) | x <- ['a' .. 'z']]

-- freqs gives the probability distribution of each char in the input xs

-- according to the math formula of chisqr
chisqr os es = sum [((o - e) ^ 2) / e | (o, e) <- zip os es]

-- Rotate left n number for list xs
rotate n xs = drop n xs ++ take n xs

-- getting the position of a value x in xs
positions x xs = [i | (x', i) <- zip xs [0 ..], x == x']

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

crack xs = encode (- factor) xs
  where
    factor = head (positions (minimum chitab) chitab)
    chitab = [chisqr (rotate n table') table_from_eng_dict | n <- [0 .. 25]]
    table' = freqs xs