What is Functional Programming?
Functional programming (FP) is a paradigm where computation is treated as the evaluation of mathematical functions. In FP, functions are "first-class citizens," meaning they can be passed as arguments, returned as values, and used just like any other variable.

What is Haskell?
Haskell is a purely functional programming language, meaning that functions in Haskell do not have side effects. A side effect is something like changing a variable or printing to the screen. Everything in Haskell is immutable (cannot be changed after it's created), and the entire focus is on expressing computation through functions.

Basic Syntax and Example
Let’s start by exploring how simple expressions and functions work in Haskell.

-- This is a comment
-- Every Haskell file is made of functions and expressions

-- Defining a constant (like a variable in JavaScript, but immutable)
x :: Int  -- This is a type declaration, saying 'x' is of type Int
x = 5

-- Defining a simple function
square :: Int -> Int  -- This is a type declaration, saying 'square' takes an Int and returns an Int
square n = n * n

-- Example of function application
main :: IO ()  -- Type signature for the main function, which performs IO (printing to screen)
main = do
  let result = square x  -- Applying the 'square' function to 'x'
  print result  -- 'print' outputs the result to the console

Key Concepts

Pure Functions: Functions in Haskell always produce the same output for the same input and do not modify any state outside the function.
Immutability: Once a value is assigned, it cannot be changed.
First-class Functions: Functions can be passed around like variables.
In this example:

square is a function that multiplies its input by itself.
main is the entry point of the program where you can run expressions.
Haskell uses type declarations (::) to define the types of variables and functions.

Similarities with JavaScript
In JavaScript, you can define functions and variables similarly, but Haskell’s variables are immutable by default:

const x = 5;
function square(n) {
  return n * n;
}
console.log(square(x));

