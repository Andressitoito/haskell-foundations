{-
Problem Statement:
Write a function that takes a list of integers and a target integer, then returns how many times that target integer appears in the list.

Focus:
This problem tests your understanding of recursion and how to track occurrences within a list.
-}

countOccurrences :: Int -> [Int] -> Int
countOccurrences _ [] = 0
countOccurrences target (x:xs) 
    | target == x = 1 + countOccurrences target xs
    | otherwise   = countOccurrences target xs

main :: IO ()
main = do
    let intArray = [1, 2, 3, 3, 3, 3, 4, 4, 5]
    let target = 3

    print(countOccurrences target intArray) 