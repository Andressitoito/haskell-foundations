Basic Data Types in Haskell
Haskell has several built-in data types. Here are some of the most common ones:

Int: Represents integer numbers (e.g., 3, 42, -7)
Float: Represents floating-point numbers (e.g., 3.14, -2.71)
Bool: Represents boolean values (True or False)
Char: Represents a single character (e.g., 'a', 'Z', '!')
String: A sequence of characters (essentially a list of Char), represented with double quotes (e.g., "hello")

Type Inference

Haskell can often figure out what type a value is based on how you use it. This is called type inference. You can write code without explicitly specifying types, and Haskell will infer the correct type for you.

However, it’s good practice to write type declarations to make your code more readable and catch potential errors early.

Example Code
Let’s look at some examples using different types.

-- Example using Int and Float
addTwoNumbers :: Int -> Int -> Int  -- Takes two Ints and returns an Int
addTwoNumbers x y = x + y

circleArea :: Float -> Float  -- Takes a Float and returns a Float
circleArea radius = pi * radius ^ 2  -- '^' is used for exponentiation

-- Boolean example
isEven :: Int -> Bool  -- Takes an Int and returns a Bool
isEven n = n `mod` 2 == 0  -- The backticks make 'mod' infix, like a regular operator

-- Char and String example
greet :: String -> String
greet name = "Hello, " ++ name ++ "!"  -- '++' concatenates strings

main :: IO ()
main = do
  print (addTwoNumbers 3 5)
  print (circleArea 2.5)
  print (isEven 4)
  print (greet "Haskell")

Key Concepts

Type Declaration: addTwoNumbers :: Int -> Int -> Int means the function takes two Ints as inputs and returns an Int.
Type Inference: If you don’t declare types, Haskell will infer them based on usage, but declaring types makes the code clearer.
Operators: In Haskell, arithmetic operators like +, *, and ^ work similarly to JavaScript. String concatenation is done with ++.
Similarities with JavaScript
In JavaScript, types are dynamic, meaning a variable’s type can change, and you don't need to declare types:

function addTwoNumbers(x, y) {
  return x + y;
}
console.log(addTwoNumbers(3, 5));

In Haskell, types are static, meaning once a value is assigned a type, it cannot change.