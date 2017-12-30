module EvenList where

  -- first N even numbers:

evenList :: Int -> [Int] -> [Int]
evenList n lst
  | n == 0 = lst
  | even (n + n) = evenList (n - 1) ((n + n):lst)
  | otherwise = evenList (n - 1) lst