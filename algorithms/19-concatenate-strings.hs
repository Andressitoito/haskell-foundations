{- Problem Statement: Write a function that concatenates two strings.

Focus: Practice basic string manipulation in Haskell.
Understand the use of the ++ operator for string concatenation.

Hints: The ++ operator can be used to combine two strings.
The function should take two string arguments and return the concatenated result. -}

concatenate :: String -> String -> String
concatenate x y = x ++ y

main :: IO ()
main = do 

    let name = "jhon"
    let lastname = " bonachon"

    print(concatenate name lastname)
