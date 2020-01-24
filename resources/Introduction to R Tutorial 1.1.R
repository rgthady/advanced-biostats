# Introduction to R Tutorial 1.1

# Section 1.1.1
# Defining Objects

# TIP: to run a single line of code, select the line (or simply place the cursor on the line)
# and press 'Ctrl' + 'Enter' (or 'control' + 'return' in macOS)

# In R you assign information to an object using the '<-' operator
obj1 <- 1

# You can change the information stored in 'obj1' whenever you want by reassigning
obj1 <- 2

# Multiple objects can be assigned the same information
obj2 <- 2

# You can also remove objects from your environment
rm(obj1) # obj1 is an object, not a character, so you call it without using quotation marks

# Okay, let's define a few more objects
obj1 <- 1
obj3 <- 'a' # 'a' is a character, and we let R know by putting quotes around it
obj4 <- 'bat'
obj5 <- c('at', 'bat', 'cat')
obj6 <- c(3, 1, 4, 1, 5, 9)

# The environment window gives us some information on the type of information stored in each object,
# but we can also return that information using a function

class(obj1)
class(obj4)
class(obj6)

# We can add numeric objects
obj1 + obj2

# We can combine them into vectors and save this new vector as its own object
obj7 <- c(obj3, obj4)

# We can also combine character objects together
obj8 <- paste(obj3, obj4, sep=' ') # This is our first look at function arguments.
                                   # The 'paste()' function takes the list of objects to be
                                   # combined as its first argument, and the character used
                                   # to separate these objects as its second argument ('sep=').
                                   # I've chosen to separate using a blank space.

# EXERCISE: Using only a combination of objects, write code that returns the sentence 'Gah! A bat!' in the console.

# Section 1.1.2
# Manipulating Vectors

# Certain functions and operations are applied to each element of a vector
1 + obj6
obj2 * obj6 # we multiply every element of obj6 by 2

# Other functions return summary statistics for the whole vector
total <- sum(obj6)
average <- mean(obj6)

# We can add elements to the end of a vector using the 'c()' function
obj9 <- c(obj5, obj3)
obj9

# But we can also add elements at a certain point within the vector
obj10 <- append(obj6, obj2, after=2) # Here the first argument is the vector we want to append new information to,
                                     # the second argument is the new information, and the third argument is the
                                     # vector location after which we want to insert the new information

# Vectors are ordered and indexed starting at 1. Elements from a vector can be accessed using their indices
obj6[1] # Here we've indexed the vector to only return the first element, 3
obj6[1] * obj6 # This element can be used just like any other integer

# Let's say we want to take a whole slice from 'obj6'
obj6[1:3] # Now we get a new vector that is a subset of 'obj6' from its first indexed element to its third

# As you would expect, you can take a slice from a vector of characters as well
obj9[2:3]

# EXERCISE: Insert the first 3 elements of 'obj6' after the fourth element of 'obj10' and assign this new vector
# to 'obj11'
