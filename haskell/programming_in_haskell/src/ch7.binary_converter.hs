import Data.Char

bin2int bits = sum [w * b | (w, b) <- zip weights bits]
  where
    weights = iterate (*2) 1

bit2int' :: [Int] -> Int
bit2int' = foldr (\x y -> x + 2 * y) 0


int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

-- padding to 8 bits
make8 bits = take 8 (bits ++ repeat 0)


-- for each char in input
--     convert char to int (ord)
--     then convert int to bits (int2bin)
--     then padding 8 bits (make8) as if it's unicode
-- Finally concat the whole result.
encode = concat . map (make8 . int2bin . ord)

-- split each 8 bits in a list to form a list of list
chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)


-- for each 8 bits chopping from input
-- apply bin2int to convert to int
-- then apply chr to convert int to c har
decode = map (chr . bin2int) . chop8


-- use id function to simulate a channel where we transmit the data out
channel = id

-- transmit is like ...  encode the input, send through channel, then decode
transmit = decode . channel . encode



