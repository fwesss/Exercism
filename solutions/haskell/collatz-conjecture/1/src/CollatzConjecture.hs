module CollatzConjecture (collatz) where

collatz' :: Integer -> Integer -> Maybe Integer
collatz' n iterations
  | n < 1 = Nothing
  | n == 1 = Just iterations
  | even n = collatz' (n `div` 2) (iterations + 1)
  | otherwise = collatz' (3 * n + 1) (iterations + 1)

collatz :: Integer -> Maybe Integer
collatz n = collatz' n 0
