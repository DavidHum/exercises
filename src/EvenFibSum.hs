module EvenFibSum where

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

evenSum :: Int -> Int -> Int -> Int
evenSum maxValue n total
    | fib n > maxValue = total
    | even (fib n) = evenSum maxValue (n + 1)  ( total + (fib n ) )
    | otherwise = evenSum maxValue (n + 1) total