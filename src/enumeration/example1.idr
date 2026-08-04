and : Bool -> Bool -> Bool
and True True = True
and _ _ = False

or : Bool -> Bool -> Bool
or True _ = True
-- or False b = b
or _ True = True
or _ _ = False