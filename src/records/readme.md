## Record Exercises


| Exercise   | Short Description          | Status   |
| ---------- | -------------------------- | -------- |
| Exercise 1 | Record get value           | Complete |
| Exercise 2 | Record equality            | Complete |
| Exercise 3 | Record toString            | Complete |
| Exercise 4 | Record - Record operations | Partial  |


**Exercise 1**
Define a record type for time spans by pairing a UnitOfTime with an integer representing the
duration of the time span in the given unit of time. Also define a function for converting a time
span to an Integer representing the duration in seconds.

**Exercise 2**
Implement an equality check for time spans. Two time spans should be considered equal, if
and only if they correspond to the same number of seconds.

**Exercise 3**
Implement a function for pretty printing time spans. The resulting string should display the time span in its given unit, plus show the number of seconds in parentheses, if the unit is not already seconds.

**Exercise 4**
Implement a function for adding two time spans. If the two time spans use different units of time, use the smaller unit of time to ensure a lossless conversion.

---

Tutorial notes  

`failing` <-> assert from python  
a `tuple` *is* a record  
`@` "operator"  
`:=` and `$=` not used substanially in the exercises. Worth remembering  