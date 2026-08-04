data UnitOfTime 
    = Second 
    | Minute
    | Hour
    | Days
    | Weeks 

-- calculate the number of seconds from a
-- number of steps in the given unit of time
total
toSeconds : UnitOfTime -> Integer -> Integer
toSeconds Second x = x
toSeconds Minute x = 60 * x
toSeconds Hour x = 60 * 60 * x
toSeconds Days x = 24 * 60 * 60 * x
toSeconds Weeks x = 7 * 24 * 60 * 60 * x

-- convert the number of steps in a given unit of time
-- to the number of steps in another unit of time.
-- use `fromSeconds` and `toSeconds` in your implementation
total
convert : UnitOfTime -> Integer -> UnitOfTime -> Integer
convert from s to = div (toSeconds from s) (toSeconds to 1)