{- Problem Statement: Write a function that takes a list of integers and returns the product of all positive numbers in the list. If there are no positive numbers, return 1.

Focus: This problem reinforces recursive list processing and handling edge cases 
(like lists without positive numbers). -}

isPositive :: Int -> Bool
isPositive x = x > 0

productOfAllPositive :: [Int] -> Int
productOfAllPositive [] = 1
productOfAllPositive (x:xs)
    | isPositive x = x * productOfAllPositive xs
    | otherwise = productOfAllPositive xs

main :: IO ()
main = do
    let intArray = [-3, 1, -4, 1, 5, -1, 9]

    print(productOfAllPositive intArray)