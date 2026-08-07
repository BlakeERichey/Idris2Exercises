data LoginError = InvalidUsername String | InvalidPassword | InvalidKey

showError : LoginError -> String
showError (InvalidUsername name) = "Unknown Username: " ++ name
showError InvalidPassword = "Invalid Password"
showError InvalidKey = "Invalid Key"