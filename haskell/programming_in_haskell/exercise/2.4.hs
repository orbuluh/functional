last_1 xs = xs !! (length xs - 1)
last_2 xs = head (take 1 (reverse xs))
last_3 xs = head (reverse xs)
last_4 xs = head (drop (length xs - 1) xs)