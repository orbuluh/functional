init_1 xs = take (length xs - 1) xs
init_2 xs = reverse(drop 1 (reverse xs))
init_3 xs = reverse(tail (reverse xs))