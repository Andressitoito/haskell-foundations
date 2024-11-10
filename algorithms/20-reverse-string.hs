{- Problem Statement: Write a function that takes a String as input and returns the reverse of that String.

Focus: 
Practice working with strings.
Use recursion to reverse the string.

Hints: You can use the : operator to break down the string into its head and tail.
Think about how to append characters to the result as you go through the string. -}

reverseString :: String -> String
reverseString [] -> []
reverseString (x:xs) = reverseString xs ++ [x]

main :: IO ()
main = do
    let name = "Jhon Bonachon"

    print(reverseString name)