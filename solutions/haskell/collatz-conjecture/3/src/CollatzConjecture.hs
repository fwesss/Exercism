module CollatzConjecture (collatz) where

collatz' :: Integer -> Integer -> Maybe Integer
collatz' n iterations = case compare n 1 of
  LT -> Nothing
  EQ -> Just iterations
  GT -> if even n then collatz' (n `div` 2) (iterations + 1) else collatz' (3 * n + 1) (iterations + 1)

collatz :: Integer -> Maybe Integer
collatz n = collatz' n 0
