data Title = Mr | Mrs | Other String
-- A dual type is read as a data constructor `f : String -> Type; Other = f a`????

dr : Title
dr = Other "Dr."

showTitle : Title -> String
showTitle Mr = "Mr."
showTitle Mrs = "Mrs."
showTitle (Other x) = x

-- cant use already existing types in a data constructor? correct
-- use `=` because `=` tells compiler to use the original data type
-- data says "these are types I am now making and will define soon how to interpret them"
-- `:` creates an interface or function declaration, which is a dependent type
-- `data =` creates a non-depdenent type declaration... no... it means I am making an enumeration using types I have no yet defined
-- `=` create a type translation or implementation
Name = String
Greeting = String

greet : Title -> Name -> Greeting
greet t name = "Hello, " ++ showTitle t ++ " " ++ name ++ "!"

-- So this reads as Password of type String?? Sequencing is confusing...
-- data Credentials = Password String Bits64 | Key String String
-- ah... its an enum, not a record. I am parsing it as if it was a record
-- why can I use String and Bits64 here if I cannot use Title? 
-- Because one is a type and the other is a type constructor? 
-- I probably can, it just doesnt work the way I was trying to use it, since I 
-- was treating it as a type.

--if my interpretation is correct, it could be rewritten as follows.
-- Password = Bits64
-- data Credentials = Name Password -- this is incorrect because at least 1 new type need to be constructed otherwise its a record
-- data Credentials = Key Name Password -- this works.

data Credentials = Password Name Bits64 | Key Name String
login : Credentials -> String
login (Password "Anderson" 6665443) = greet Mr "Anderson"
login (Key "Smith" "iAmTheOneWhoKnocks") = greet (Other "Agent") "Smith"
login _ = "Access Denied"