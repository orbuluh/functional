import Data.List  -- for sort

-- The type is like ... first a is arbitrary Eq'able value x
-- which is used for x to bind with filter, then feed the
-- list [a] to length. Finally, the output list return the Int
-- as the count result.

count :: Eq a => a -> [a] -> Int
-- counts the number of times that a given value occurs in a list
count x = length . filter (==x)


-- The first time you see a unique x, it's used as result
-- then it becomes what will be filtered out
rmdups :: Eq a => [a] -> [a]
--  removes duplicate values from a list
rmdups [] = []
rmdups (x:xs) = x : filter (/=x) (rmdups xs)

-- result of a first-past-the-post election in increasing order of the number
-- of votes received:

first_past_post vs = sort [(count v vs, v) | v <- rmdups(vs)]


-- taking last element from first_past_post, which is the pair
-- (max_vote_cnt, element_name), then take the second (snd) val
-- of the pair as result
winner :: Ord a => [a] -> a
winner = snd . last . first_past_post