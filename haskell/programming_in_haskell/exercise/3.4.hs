-- Check your answers to the preceding three questions using GHCi

-- you can use `:type` like below in ghci
> twice f x = f(f x)
> :info twice
twice :: (t -> t) -> t -> t     -- Defined at <interactive>:23:1
-- or
> :type twice
twice :: (t -> t) -> t -> t