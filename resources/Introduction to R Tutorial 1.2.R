# Introduction to R Tutorial 1.2

# Section 1.2.1
# Conditional Statements

# Conditional statements are used to excecute a certain block of code when a condition is met.
# The statements are structured in "if/then" and "else/then" format. Here's what I mean:

obj1 <- 5
statement1 <- 'Less than 5'
statement2 <- 'Greater than 5'
statement3 <- 'Equal to 5'

if(obj1 < 5) {
  print(statement1)
} else if(obj1 > 5) {
    print(statement2)
} else {
    print(statement3)
}

# Run this entire block of code to see what is printed in the console.
# Let's reassign obj1

obj1 <- 3

# Now run the sequence of conditionals again

if(obj1 < 5) {
  print(statement1)
} else if(obj1 > 5) {
  print(statement2)
} else {
  print(statement3)
}

# EXERCISE: This is a more complex one, but let's walk through it

# 1. Create a sequence of numbers starting at 1, ending at 10, and incrementing by 1.
#    Save this sequence of numbers to an object called obj2. HINT: type ?seq() into the
#    console to see how the seq() works (pay attention to the "Description", Usage" and
#    "Arguments" sections in particular).

# 2. Let's learn how to select a random number from this sequence. We'll use the function
#    sample(). Take a minute to figure out how sample() works, and then create a new object,
#    obj3, that holds a single random draw from the sequence defined by obj2. Don't worry about
#    specifying the "replace" and "prob" arguments. They default to FALSE, which is what we want!

# 3. Okay, let's figure out if that random integer between 1 and 10 is odd or even!
#    See if you can figure out how the %% operator works by running the following lines of code.

2%%2
3%%2
4%%2
5%%2

#    This is called the modulo operator. We can use it with a conditional statement like this:

if(2%%2 == 0){
  print('Zero')
}

#    Please write a sequence of conditionals that prints "Even" if the random integer stored in obj3
#    is even, and "Odd" if obj3 is odd

# Section 1.2.2
# For Loops

# Here's an example. There's a logical error in this code. Read through it and run it. Check the output in the
# console. What is the issue here? See if you can fix the code so that the output is always correct. This fix
# only requires knowledge of conditional syntax.

for(i in 1:15){
  draw <- sample(1:10, 1)
  if(draw > 5){
    print(paste(draw, 'is greater than 5', sep = ' '))
  } else{
    print(paste(draw, 'is less than 5', sep = ' '))
  }
}














