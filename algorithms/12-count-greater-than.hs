{- Problem Statement:
Write a function `countGreaterThan` that takes an integer `n` and a list of integers,
and returns the count of numbers in the list that are greater than `n`.

Focus:
This problem tests your ability to count elements in a list based on a simple condition. -}

greaterThan :: Int -> Int -> Bool
greaterThan x y = x > y

countGreaterThan :: Int -> [Int] -> Int
countGreaterThan _ [] = 0
countGreaterThan y (x:xs)
    | greaterThan x y = 1 + countGreaterThan y xs
    | otherwise = countGreaterThan y xs

main :: IO ()
main = do
    let number = 3
    let intArray = [ 1, 2, 3, 4, 5 ]

    print(countGreaterThan number intArray)