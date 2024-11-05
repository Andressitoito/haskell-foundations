{- Problem Statement:
Write a Haskell function that removes consecutive duplicates from a list. The function should keep only the first occurrence in each sequence of duplicates and remove any subsequent duplicates that appear right after the first occurrence.

Focus:
Practice working with recursive functions on lists.
Manipulate lists by checking consecutive elements.

Hints:
Use pattern matching to compare each element with the next.
Recursively iterate through the list, keeping the first item in each sequence of duplicates. -}

checkNum :: Int -> Int -> Bool
checkNum x y = x /= y

removeConsecutive :: [Int] -> [Int]
removeConsecutive [] = []
removeConsecutive [x] = [x]
removeConsecutive (x:y:xs)
    | checkNum x y = x : removeConsecutive (y:xs)
    | otherwise = removeConsecutive (y:xs)

main :: IO ()
main = do
    let intArray = [1, 1, 2, 3, 3, 3, 4, 5, 5, 6]

    print(removeConsecutive intArray)