-- |Description: Internal
module Exon.Data.Segment where

-- |The parts of an interpolation quasiquote.
-- Text is split at each whitespace and interpolation splice marked by @#{@ and @}@.
data Segment a =
  String String
  |
  Whitespace String
  |
  Expression a
  deriving (Eq, Show)
