isEven : Integer -> Bool
isEven n = mod n 2 == 0
isOdd : Integer -> Bool
isOdd = not . isEven
isSmall : Integer -> Bool
isSmall x = x <= 100

and : (Integer -> Bool) -> (Integer -> Bool) -> Integer -> Bool
and f1 f2 x = f1 x && f2 x

or : (Integer -> Bool) -> (Integer -> Bool) -> Integer -> Bool
or f1 f2 x = f1 x || f2 x

negate : (Integer -> Bool) -> Integer -> Bool
negate f1 = not . f1

-- return true, if and only if both predicates hold
(&&) : (Integer -> Bool) -> (Integer -> Bool) -> Integer -> Bool
x && y = and x y

-- return true, if and only if at least one predicate holds
(||) : (Integer -> Bool) -> (Integer -> Bool) -> Integer -> Bool
(||) = or

-- return true, if the predicate does not hold
not : (Integer -> Bool) -> Integer -> Bool
not = negate