module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = go n 0
 where
  go current iterations = case compare current 1 of
    LT -> Nothing
    EQ -> Just iterations
    GT ->
      if even current
        then go (current `div` 2) (iterations + 1)
        else go (3 * current + 1) (iterations + 1)
