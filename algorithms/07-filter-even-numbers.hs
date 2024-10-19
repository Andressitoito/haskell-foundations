{-
Problem Statement: Write a function that takes a list of integers and returns a new list containing only the even numbers.

Focus: This problem tests your ability to filter elements in a list based on a condition.
-}

checkEven :: Int -> Bool
checkEven x = x `mod` 2 == 0

filterEven :: [Int] -> [Int]
filterEven [] = []
filterEven (x:xs)
    | checkEven x = x : filterEven xs
    | otherwise = filterEven xs

main :: IO ()
main = do
    let intArray = [ 1, 2, 3, 4, 5 ]
    
    print(filterEven intArray)