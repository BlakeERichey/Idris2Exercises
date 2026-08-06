data Title = Mr | Mrs | Other String

eqTitle : Title -> Title -> Bool
eqTitle Mr Mr = True
eqTitle Mrs Mrs = True
eqTitle (Other x) (Other y) = x == y
eqTitle _ _ = False