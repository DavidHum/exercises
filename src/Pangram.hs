module Pangram where

-- You will need to handle the case where a character in the sentence may be in
-- uppercase, or may be a punctuation. `toLower` and `isAlpha` should help you with that.
--
import Data.Char (toLower, isAlpha)

charPresent :: Char -> String -> Bool
charPresent needle haystack = undefined

isPangram :: String -> String -> Bool
isPangram remainingChars remainingString = undefined