import Data.List

-- function that removes empty ballots,
rmempty :: Eq a => [[a]] -> [[a]]
rmempty = filter (/= [])

-- function that eliminates a given candidate from each ballot:
elim x = map (filter (/= x))

-- ranks the 1st-choice candidates in each ballot in increasing
-- order of the number of such votes that were received

-- counts the number of times that a given value occurs in a list
count x = length . filter (==x)
--  removes duplicate values from a list
rmdups [] = []
rmdups (x:xs) = x : filter (/=x) (rmdups xs)

-- from first past post, basically sort each entry by votes
first_past_post vs = sort [(count v vs, v) | v <- rmdups(vs)]


-- the smallest number of voting will be at front
rank :: Ord a => [[a]] -> [a]
rank = map snd . first_past_post . map head


-- the case mechanism of Haskell that is used in the below definition allows
-- pattern matching to be used in the body of a definition, and is sometimes
-- useful for avoiding the need to introduce an extra function definition just
-- for the purposes of performing pattern matching.

-- rank gives fewest votes entry, which is eliminated
-- till the input has only one voters left.
winner' :: Ord a => [[a]] -> a
winner' bs = case rank (rmempty bs) of
            [c] -> c
            (c:cs) -> winner' (elim c bs)

-- ballots = [["r", "g"], ["b"], ["g", "r", "b"], ["b", "g", "r"], ["g"]]
-- winner' ballots