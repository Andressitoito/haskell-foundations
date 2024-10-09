-- Problem Statement:
-- Write a function that takes a list of integers and prints each element of the list on a new line.

-- Focus:
-- This problem tests your understanding of:

-- Creating a list.
-- Recursively processing each element in a list.
-- Using pattern matching to handle lists.

printList :: [Int] -> IO ()
printList [] = return ()
printList (x:xs) = do
    print x
    printList (xs)

main :: IO ()
main = do
    let intArray = [ 1, 2, 3, 4, 5 ]

    printList(intArray)