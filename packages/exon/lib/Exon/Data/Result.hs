module Exon.Data.Result where

data Result a =
  Empty
  |
  Result a 
  deriving (Eq, Show, Foldable)

instance Semigroup a => Semigroup (Result a) where
  (<>) Empty a = a
  (<>) a Empty = a
  (<>) (Result l) (Result r) = Result (l <> r)

instance Monoid a => Monoid (Result a) where
  mempty =
    Result mempty
