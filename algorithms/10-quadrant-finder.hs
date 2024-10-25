{- Problem Statement:
Write a function that takes two integers as coordinates x and y and returns a string indicating which quadrant of the Cartesian plane the point lies in. The four quadrants are defined as follows:

Quadrant Definitions:

Quadrant I: x > 0 and y > 0
Quadrant II: x < 0 and y > 0
Quadrant III: x < 0 and y < 0
Quadrant IV: x > 0 and y < 0

Additionally, handle the special cases where the point lies on one of the axes:

If the point lies on the x-axis, return "On the X-axis".
If the point lies on the y-axis, return "On the Y-axis".
If the point is at the origin (0, 0), return "At the Origin".

Focus:

This problem tests your ability to use multiple conditional checks to handle different cases. -}

findQuadrant :: Int -> Int -> String
findQuadrant x y
    | x == 0 && y == 0 = "At the Origin"
    | x == 0           = "On the Y-axis"
    | y == 0           = "On the X-axis"
    | x > 0 && y > 0   = "Quadrant I"
    | x < 0 && y > 0   = "Quadrant II"
    | x < 0 && y < 0   = "Quadrant III"
    | x > 0 && y < 0   = "Quadrant IV"

main :: IO ()
main = do
    print (findQuadrant 1 2)    -- "Quadrant I"
    print (findQuadrant -1 2)   -- "Quadrant II"
    print (findQuadrant -1 -2)  -- "Quadrant III"
    print (findQuadrant 1 -2)   -- "Quadrant IV"
    print (findQuadrant 0 2)    -- "On the Y-axis"
    print (findQuadrant 2 0)    -- "On the X-axis"
    print (findQuadrant 0 0)    -- "At the Origin"
