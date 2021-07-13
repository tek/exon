module Exon.Combinators where

import Prelude hiding (intercalate)

-- |Monoidally combine all elements in the list, appending the separator between each pair of elements.
intercalate ::
  Monoid a =>
  Foldable t =>
  a ->
  t a ->
  a
intercalate sep =
  fold . foldl' f Nothing
  where
    f Nothing a =
      Just a
    f (Just z) a =
      Just (z <> sep <> a)
