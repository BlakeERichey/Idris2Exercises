isEven : Integer -> Bool
isEven n = mod n 2 == 0
isOdd : Integer -> Bool
isOdd = not . isEven