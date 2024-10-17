{- 
Problem Statement: Write a function that takes a list of integers and returns the list in reverse order.

Focus: This problem tests your understanding of recursion, pattern matching, and list operations.
-}

reverseList :: [Int] -> [Int]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

main :: IO ()
main = do
    let intArray = [ 1, 2, 3, 4, 5 ]

    print(reverseList intArray)