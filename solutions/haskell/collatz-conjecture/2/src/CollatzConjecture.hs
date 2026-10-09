module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = collatz' n 0
 where
  collatz' n' iterations = case compare n' 1 of
    LT -> Nothing
    EQ -> Just 0
    GT -> if even n' then collatz' (n' `div` 2) (iterations + 1) else collatz' (3 * n' + 1) (iterations + 1)
