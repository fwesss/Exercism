module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA = traverse fromDNA
 where
  fromDNA 'G' = Right 'C'
  fromDNA 'C' = Right 'G'
  fromDNA 'T' = Right 'A'
  fromDNA 'A' = Right 'U'
  fromDNA invalid = Left invalid
