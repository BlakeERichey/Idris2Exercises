data Title = Mr | Mrs | Other String

isOther : Title -> Bool
isOther (Other _) = True
isOther _ = False