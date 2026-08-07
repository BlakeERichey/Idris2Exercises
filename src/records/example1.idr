data UnitOfTime = Day | Hour | Minute | Second
convertTime : UnitOfTime -> Integer
convertTime unit = case unit of
    Second  => 1
    Minute  => 60 * (convertTime Second)
    Hour    => 60 * (convertTime Minute)
    Day     => 24 * (convertTime Hour)

record Event where
    constructor MkTime
    duration : UnitOfTime

getDuration : Event -> Integer
getDuration = convertTime . duration