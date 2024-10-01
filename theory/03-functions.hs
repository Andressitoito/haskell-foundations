What Are Functions?
In Haskell, functions are the fundamental building blocks of the language. You can think of them like mathematical functions—they take an input (or multiple inputs) and return an output. But unlike in some other languages, functions in Haskell are first-class citizens, meaning you can:

Pass functions as arguments to other functions.
Return functions from functions.
Store functions in variables.
A function in Haskell looks like this:

functionName :: InputType -> OutputType
functionName parameter = expression

Let’s break that down:

functionName: The name you give your function.
:: InputType -> OutputType: The type declaration that describes the types of inputs and the output.
parameter: The input your function will take.
expression: What the function does with the input to produce an output.
Example of a Simple Function
Let’s define a function that takes two numbers and adds them together:

-- Function that adds two integers
add :: Int -> Int -> Int
add x y = x + y

Here’s how it works:

add :: Int -> Int -> Int: This says that add is a function that takes two Int (integer) values as inputs and returns an Int.
add x y = x + y: The function takes x and y, and it returns their sum (x + y).

When you run this function, you can do:

main :: IO ()
main = print (add 3 5)  -- This will output: 8

Curried Functions

In Haskell, functions are curried by default. This means you can call them with fewer arguments than they expect. When you do this, the function returns a new function that takes the remaining arguments.

Let’s modify the add function slightly to demonstrate:

-- Function that adds two integers (curried)
add :: Int -> Int -> Int
add x y = x + y

-- Partial application example
addFive = add 5  -- This creates a new function that adds 5 to any number

What happened here?

add 5 is partially applying the add function with the first argument (5).
Now addFive is a new function that takes one number and adds 5 to it.

You can use addFive like this:

main :: IO ()
main = print (addFive 3)  -- This will output: 8
Example Code
Here’s the full example:

-- Defining a simple add function
add :: Int -> Int -> Int
add x y = x + y

-- Partially applying the add function
addFive :: Int -> Int
addFive = add 5  -- Now we have a function that adds 5 to its input

-- Main function to demonstrate the usage
main :: IO ()
main = do
  print (add 3 4)  -- Outputs: 7
  print (addFive 3)  -- Outputs: 8

Key Concepts

Function Definition: You define a function by specifying the input types, the function body (the logic), and the return type.
Curried Functions: Every function in Haskell can be partially applied, meaning you can call a function with fewer arguments and get back a new function that takes the remaining arguments.
