module Throwaway where

isCharPresent :: Char -> [Char] -> Bool
isCharPresent needle remainingString =
    if (remainingString == [])
        then False
        else if (needle == (head remainingString))
            then True
            else isCharPresent needle (tail remainingString)

allCharsPresent :: [Char] -> [Char] -> Bool
allCharsPresent remainingNeedles haystack =
    if (remainingNeedles == [])
        then True
        else if isCharPresent (head remainingNeedles) haystack
            then allCharsPresent (tail remainingNeedles) haystack
            else False

{--
evenList :: Int -> [Int] -> [Int]
evenList n lst =
    if (n == 0)
        then lst
        else if (mod n 2) == 0
            then evenList (n - 1) (n:lst)
            else evenList (n - 1) lst --}