module Pangram (isPangram) where

import Data.Char (toLower)
import Data.List ((\\))

isPangram :: String -> Bool
isPangram text = null ((\\) "abcdefghijklmnopqrstuvwxyz" (map toLower text))
