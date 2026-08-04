and : (Integer -> Bool) -> (Integer -> Bool) -> Integer -> Bool
and f1 f2 x = f1 x && f2 x

or : (Integer -> Bool) -> (Integer -> Bool) -> Integer -> Bool
or f1 f2 x = f1 x || f2 x

negate : (Integer -> Bool) -> Integer -> Bool
negate f1 = not . f1