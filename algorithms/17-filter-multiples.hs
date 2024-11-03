{- Problem Statement:
Write a function that filters and returns all numbers in a list that are not multiples of a given number n.

Focus:

Practice breaking down problems into multiple functions.
Use recursive functions to filter elements based on a specific condition.

Hints:

Use one helper function, isMultiple, to check if a number is a multiple of n.
Use a second function, filterNonMultiples, to filter out the multiples of n from the list.

Example:
If n = 3 and the list is [1, 3, 4, 6, 7, 9, 10], the function should return [1, 4, 7, 10] because these numbers are not multiples of 3. -}

isMultiple :: Int -> Int -> Bool
isMultiple x y = x `mod` y == 0

filterNonMultiples :: Int -> [Int] -> [Int]
filterNonMultiples _ [] = []
filterNonMultiples num (x:xs)
    | not (isMultiple x num) = x : filterNonMultiples xs
    | otherwise = filterNonMultiples xs

main :: IO ()
main = do
    let intArray = [ 1, 2, 3, 4, 5 ]

    let num = 2

    print(filterNonMultiples num intArray)