-- |Description: Internal
module Exon.Combinators where

import qualified Prelude
import Prelude hiding (intersperse)

import Exon.Class.Exon (Exon (exonProcess))
import qualified Exon.Data.Segment as Segment

-- |Monoidally combine all elements in the list, appending the separator between each pair of elements.
intercalate ::
  Exon a =>
  Monoid a =>
  Foldable t =>
  a ->
  t a ->
  a
intercalate sep ta =
  foldMap exonProcess (nonEmpty (Segment.Expression <$> Prelude.intersperse sep (toList ta)))
