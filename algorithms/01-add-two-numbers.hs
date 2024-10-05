-- Problem Statement:
-- Write a function that takes two integers and returns their sum.

-- Focus:
-- Tests your understanding of function definition and applying inputs.

addTwoNumbers :: Int -> Int -> Int
addTwoNumbers x y = x + y

main :: IO ()
main = do 
 print(addTwoNumbers 8 7)