square : Integer -> Integer
square n = n * n

twice : (Integer -> Integer) -> Integer -> Integer
twice f = f . f

isEven : Integer -> Bool
isEven n = mod n 2 == 0

testSquare : (Integer -> Bool) -> Integer -> Bool
testSquare fun = fun . square

main = testSquare isEven 4 == True