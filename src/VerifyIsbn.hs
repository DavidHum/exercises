module VerifyIsbn where

import Data.Char (digitToInt)

isValidIsbn :: String -> Bool
isValidIsbn isbn =
    length isbn == 10 && isValidIsbnInternal isbn 10 0

isValidIsbnInternal :: String -> Int -> Int -> Bool
isValidIsbnInternal remainingIsbn currentMultiplier total = 
    if currentMultiplier == 0
        then mod total 11 == 0
        else False