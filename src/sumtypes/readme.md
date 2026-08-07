## Sum Type Exercises


| Exercise   | Short Description              | Status   |
| ---------- | ------------------------------ | -------- |
| Exercise 1 | Binary Gate                    | Complete |
| Exercise 2 | Inline Data Constructors (IDC) | Complete |
| Exercise 3 | Custom IDC                     | Complete |
| Exercise 4 | Enumerating with custom IDC    | Complete |


**Exercise 1**
Implement an equality test for Title (you can use the equality operator ( == ) for comparing
two String s):
```
total
eqTitle : Title -> Title -> Bool
```

**Exercise 2**
Implement a simple test for Title to check whether or not a custom title is being used:

```
total
isOther : Title -> Bool
```

**Exercise 3**
Given our simple Credentials type, there are three ways for authentication to fail:
- An unknown username was used.
- The password given does not match the one associated with the username.
- An invalid key was used.

Encapsulate these three possibilities in a sum type called LoginError . Make sure not to
disclose any confidential information, an invalid username should be stored in the
corresponding error value, but an invalid password or key should not.

**Exercise 4**
Implement the following function , which can be used to display an error message to the user
after they unsuccessfully tried to login into our web application:

```
total
showError : LoginError -> String
```

---

**Tutorials**
Sum types are basically enumerable dependent types with more than one source.
Prior exercises have only had one "parameter", sum types have 2 or more.