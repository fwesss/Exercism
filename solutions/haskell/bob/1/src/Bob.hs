module Bob (responseFor) where

import Data.Char (isAlpha, isSpace, isUpper)
import Data.List (isPrefixOf)

responseFor :: String -> String
responseFor xs
  | isYell && isQuestion = "Calm down, I know what I'm doing!"
  | isYell = "Whoa, chill out!"
  | isQuestion = "Sure."
  | isSilence = "Fine. Be that way!"
  | otherwise = "Whatever."
 where
  isYell = not (null letters) && all isUpper letters
  isQuestion = "?" `isPrefixOf` dropWhile isSpace (reverse xs)
  isSilence = all isSpace xs
  letters = filter isAlpha xs


