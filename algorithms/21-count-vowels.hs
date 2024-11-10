{- Problem Statement: Write a function that counts the number of vowels ('a', 'e', 'i', 'o', 'u') in a given string.

Focus: Practice working with strings.
Learn how to iterate over a string and count specific elements.

Hints: Use if or case expressions to check if a character is a vowel.
You can use recursion to iterate through the string or filter to get only vowels.

Your Task: Create a function countVowels that takes a string and returns the number of vowels in the string. Implement the function and test it with some example strings. -}
vowels :: String
vowels = "aeiouAEIOU"

isChar :: Char -> Bool
isChar x = x `elem` vowels

countVowels :: String -> Int
countVowels [] = 0
countVowels (x:xs)
    | isChar x = 1 + countVowels xs
    | otherwise = countVowels xs

main :: IO ()
main = do
    let sentence = "This is a long sentence"

    print(countVowels sentence)

