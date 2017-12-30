module SquareDiff where

square :: Int -> Int
square x = x * x

sumOfSquares :: Int -> Int -> Int
sumOfSquares remainingCount total
    | remainingCount > 0 = sumOfSquares (remainingCount - 1 ) (total + (square remainingCount) )
    | otherwise = total

squareOfSum :: Int -> Int -> Int
squareOfSum remainingCount total
    | remainingCount > 0 = squareOfSum (remainingCount - 1) ( total + remainingCount )
    | otherwise = square total

difference :: Int -> Int
difference n =
     squareOfSum n 0 - (sumOfSquares n 0)