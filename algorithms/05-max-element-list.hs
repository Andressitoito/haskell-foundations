{- 
Problem Statement: Write a function that takes a list of integers and returns the maximum element in the list. You can assume the list is non-empty.

Focus: This problem tests your understanding of recursion with lists and how to compare elements.
-}

maximumElement :: [Int] -> Int
maximumElement [x] = x
maximumElement (x:xs) = max x (maximumElement xs)

main :: IO ()
main = do
    let intArray = [3,7,5,7,8,9,10]

    print (maximumElement intArray)

