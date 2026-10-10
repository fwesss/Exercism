module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA "" = Right ""
toRNA dna = go dna ""
 where
  go "" rna = Right rna
  go (maybeNucleotide : maybeDna) rna = case convert maybeNucleotide of
    Left invalid -> Left invalid
    Right nucleotide -> go maybeDna (rna ++ [nucleotide])

  convert 'G' = Right 'C'
  convert 'C' = Right 'G'
  convert 'T' = Right 'A'
  convert 'A' = Right 'U'
  convert invalid = Left invalid
