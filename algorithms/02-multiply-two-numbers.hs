-- Problem Statement:
-- Write a function that takes two integers and returns their product.

-- Focus:
-- Tests your understanding of function definition and multiplication.

multiplyTwoNumbers :: Int -> Int -> Int
multiplyTwoNumbers num1 num2 = num1 * num2

main :: IO ()
main = do
 print(multiplyTwoNumbers 12 8)