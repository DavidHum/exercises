module VerifyIsbn where

isValidIsbn :: String -> Bool
isValidIsbn isbn = undefined

isValidIsbnInternal :: String -> Int -> Int -> Bool
isValidIsbnInternal remainingIsbn currentMultiplier total = undefined