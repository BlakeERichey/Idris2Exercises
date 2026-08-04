data Element = H | C | N | O | F
atomicMass : Element -> Double
atomicMass e = case e of
    H => 1.008
    C => 12.011
    N => 14.007
    O => 15.999
    F => 18.9984