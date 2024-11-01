{- Problem Statement:
Given a list of integers, write a program that separates the list into two lists:
one containing only even numbers and the other containing only odd numbers.

Your program should define two functions:
  - `filterEvens :: [Int] -> [Int]` that returns a list of all even numbers.
  - `filterOdds :: [Int] -> [Int]` that returns a list of all odd numbers.

Then, use these two functions in the main function to print both lists of even and odd numbers.

For example:
Input: [1, 2, 3, 4, 5, 6]
Output:
Even Numbers: [2, 4, 6]
Odd Numbers: [1, 3, 5]

Focus:
- Practice using multiple functions together.
- Reinforce understanding of basic list processing.
- Familiarize yourself with conditionals using even and odd checks. -}

checkEven :: Int -> Bool
checkEven x = x `mod` 2 == 0

filterEvens :: [Int] -> [Int]
filterEvens [] = []
filterEvens (x:xs) 
    | checkEven x = x : filterEvens xs
    | otherwise = filterEvens xs

checkOdd :: Int -> Bool
checkOdd x = x `mod` 2 /= 0

filterOdds :: [Int] -> [Int]
filterOdds [] = []
filterOdds (x:xs) 
    | checkOdd x = x : filterOdds xs
    | otherwise = filterOdds xs

main :: IO ()
main = do 
    let intArray = [ 1, 2, 3, 4, 5 ]

    print ("Even numbers: ", filterEvens intArray)
    print ("Odd numbers: ", filterOdds intArray)
