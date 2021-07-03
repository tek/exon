module Exon.Data.Segment where

data Segment a =
  String String
  |
  Whitespace String
  |
  Expression a
  deriving (Eq, Show)
