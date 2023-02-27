-- Redefine the function positions using the function find

find val ps = [pos | (e, pos) <- ps, val == e]
positions k xs = find k (zip xs [0..])
