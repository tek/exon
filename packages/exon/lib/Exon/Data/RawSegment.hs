module Exon.Data.RawSegment where

data RawSegment =
  WsSegment String
  |
  StringSegment String
  |
  ExpSegment String
  deriving (Eq, Show)
