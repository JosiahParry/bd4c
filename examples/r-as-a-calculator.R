# This is an example R script.
# Note the .R extension. This indicates it is a script.
# Scripts contain strictly code.

# This is a comment.
# A comment is a line of code that will not be run.
# Use them liberally to document your work so that future you (and your instructor)
# knows what you were thinking!
# A comment begins with the pound symbold `#`.

# We can use R like a calculator!
# Execute this line of code by typing command enter or control enter on PC.

# Addition
3 + 2

# Subtraction
3 - 2

# Multiplication
3 * 2

# Exponentiation
3^2

# PEMDAS
(3 + 2)^2

# Creating a variable
# I imagine that we're shoving the value 5 in to the variable x.
# Note the assignment arrow <-. You can create this with the shortcut option and -.
# Please have spaces on either side so that it is legible.

x <- 5

# We can see the value that a variable (object) contains by executing it by itself.
# This is called printing.
x

# We can reference the value that `x` stores in other mathematic expressions.
# Say Y = 3x - 24. What is y?

y <- 3 * x - 24

y



## Functions

# Functions are a special kind of R object.
# Functions exist to simplify a task.
# You can identify a function by the parentheses that are appended to the function name.

# This calculates the sum of values.
sum()

# There were no values provided so the result is 0.

# We can provide more inputs (formally called function arguments) to `sum()`.
# For example to find the sum of 10 we write `sum(10)`.

sum(10)


# We can provide more **arguments** to `sum()`.
# To find the sum of 10, 3, and 2 we write `sum(10, 3, 2)`.
`sum(10, 3, 2)


# We can create a sequence of numbers using `c()`. This is called a **vector**.
# c() **combines** values together.
odds <- c(1, 3, 5)

# We can make math expressions with vectors too :)
# make odds even by adding 1
odds + 1

# make every value equal to 5
odds + c(4, 2, 0)
