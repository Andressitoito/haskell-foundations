{-
Problem Statement:
Write a function that takes a list of integers and counts how many of them are positive.

Focus:
This problem helps you practice filtering and counting elements based on a condition, just like with even numbers and occurrences.
-}

checkPositive :: Int -> Bool
checkPositive x = x >= 0

countPositives :: [Int] -> Int
countPositives [] = 0
countPositives (x:xs)
    | checkPositive x = 1 + countPositives xs
    | otherwise = countPositives xs

main :: IO ()
main = do
    let intArray = [ 1, -2, 3, -4, 5 ]
    
    print(countPositives intArray)