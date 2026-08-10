data UnitOfTime = Second | Minute | Hour | Day
toSeconds : UnitOfTime -> Nat
toSeconds unit = case unit of
    Second => 1
    Minute => 60 * toSeconds Second
    Hour   => 60 * toSeconds Minute
    Day    => 24 * toSeconds Hour

record TimeSpan where
    constructor MkTimeSpan
    unit  : UnitOfTime
    value : Nat

duration : TimeSpan -> Nat
duration t = (value t) * (toSeconds (unit t))

getSmallest : UnitOfTime -> UnitOfTime -> UnitOfTime
getSmallest Second _ = Second
getSmallest Minute _ = Minute
getSmallest Hour   _ = Hour
getSmallest _      _ = Day

-- only works if smallest unit is in Seconds
-- convert to specific unit instead
-- ignored because would simply require duplicating preexisting logic
addTimeSpans : TimeSpan -> TimeSpan -> TimeSpan
addTimeSpans a b = MkTimeSpan 
    (getSmallest a.unit b.unit)
    (duration a + duration b)

-- Example
-- addTimeSpans (MkTimeSpan Second 4) (MkTimeSpan Minute 13)