{- Problem Statement: Write a program that separates positive and negative numbers in a list.

Define two functions:
- `sumPositives` to calculate the sum of all positive numbers in a list.
- `sumNegatives` to calculate the sum of all negative numbers in the list.

The program should then return a tuple with both results, formatted as `(sum of positives, sum of negatives)`.

Focus: This problem tests your ability to work with multiple functions and handle lists based on a condition. -}

sumPositives :: [Int] -> Int
sumPositives [] = 0
sumPositives (x:xs)
    | x >= 0 = x + sumPositives xs
    | otherwise = sumPositives xs

sumNegatives :: [Int] -> Int
sumNegatives [] = 0
sumNegatives (x:xs)
    | x < 0 = x + sumNegatives xs
    | otherwise = sumNegatives xs

main :: IO ()
main = do
    let intArray = [ 1, -2, 3, -4, 5 ]

    print(sumPositives intArray, sumNegatives intArray)
    