{- Problem Statement: Write a function that finds the smallest integer in a list of integers.

Focus: This problem will help you practice recursion and conditional comparisons within a list.

Instructions:
1. Define a function called `findMinimum` that takes a list of integers as input.
2. Use recursion to compare each element to find the smallest one.
3. If the list is empty, you may return a default value, such as `maxBound :: Int`, or handle it however you'd like.
4. Use this function in `main` to print the smallest value in a predefined list.

Example:
Given the list `[3, 1, 4, 1, 5, -1, 9]`, the function should return `-1`. -}

findMinimum :: [Int] -> Int
findMinimum [x] = x
findMinimum (x:xs) = min x (findMinimum xs)

main :: IO ()
main = do
    let intArray = [3, 1, 4, 1, 5, -1, 9]

    print(findMinimum intArray)