isSmall : Integer -> Bool
isSmall x = x <= 100

-- Negative Integer deferred to Prelude Interfaces in later sections.
absIsSmall : Integer -> Bool
absIsSmall = isSmall . abs