module Leap where

isLeapYear :: Int -> Bool
isLeapYear yr = 
    if (mod yr 4) == 0
        then True
        else if (mod yr 100) == 0
            then False
            else if (mod yr 400) == 0
                then True
                else False