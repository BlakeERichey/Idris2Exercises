data UnitOfTime = Day | Hour | Minute | Second
convertTime : UnitOfTime -> Integer
convertTime unit = case unit of
    Second  => 1
    Minute  => 60 * (convertTime Second)
    Hour    => 60 * (convertTime Minute)
    Day     => 24 * (convertTime Hour)

record Event where
    constructor MkEvent
    unit : UnitOfTime
    value : Integer

getDuration : Event -> Integer
getDuration e = ((convertTime . unit) e) * (value e)

-- ToString
toString : Event -> String
toString e = "Event " ++ show (getDuration e)
-- alternative use 
-- toString (MkEvent u v) = ...