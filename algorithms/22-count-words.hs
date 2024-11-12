{- Problem Statement: Write a function that takes a string as input and returns the number of words in that string. Words are defined as sequences of characters separated by spaces.

Focus: Practice working with strings.
Use recursion or Haskell's built-in functions to split and count words.

Hints: You can use the words function in Haskell, which splits a string into a list of words based on spaces.
Use length to count the number of words in the resulting list.
Alternatively, try implementing it yourself by iterating through each character and counting spaces.

Your Task: Create a function called countWords that takes a string and returns the count of words in it. Test your function with example sentences. -}

countWords :: String -> Int
countWords x = length (words x)

main :: IO ()
main = do
    let sentence = "This is an interesting sentence"

    putStrLn ("There are " ++ show (countWords sentence) ++ " words in this sentence")