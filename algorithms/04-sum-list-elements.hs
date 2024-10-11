{- 
Problem Statement:
Write a function that takes a list of integers and returns the sum of all elements in the list.

Focus:
This problem tests your understanding of:

List traversal.
Accumulating a result (in this case, the sum).
Using recursion to process the list. 
-}

sumListElements :: [Int] -> Int
sumListElements [] = 0
sumListElements (x:xs) = x + sumListElements xs

main :: IO ()
main = do
    let array = [ 1, 2, 3, 4, 5 ]

    print (sumListElements array)
