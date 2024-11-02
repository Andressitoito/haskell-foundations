{- Problem Statement:
Write a function that filters and returns all numbers in a list that are greater than the average of the list.

Focus:

Practice breaking down problems into multiple functions.
Work with calculations involving lists, such as finding an average. -}

listLength :: [Int] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

average :: Int -> Int -> Float
average x y = fromIntegral x / fromIntegral y

greaterThanAverage :: Float -> [Int] -> [Int]
greaterThanAverage _ [] = []
greaterThanAverage avg (x:xs)
    | fromIntegral x > avg = x : greaterThanAverage avg xs
    | otherwise greaterThanAverage avg xs

main :: IO ()
main = do
    let intArray = [ 1, 2, 3, 4, 5 ]

    let avg = average (sumList intArray) (listLength intArray)

    print (greaterThanAverage avg intArray)