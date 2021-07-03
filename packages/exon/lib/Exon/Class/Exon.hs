module Exon.Class.Exon where

import Exon.Data.Result (Result (Empty, Result))
import qualified Exon.Data.Segment as Segment
import Exon.Data.Segment (Segment)

data ExonDefault

class Exon (tag :: Type) (a :: Type) where
  convertSegment :: Segment a -> Result a

  default convertSegment :: IsString a => Segment a -> Result a
  convertSegment = \case
    Segment.String a ->
      Result (fromString a)
    Segment.Expression a ->
      Result a
    Segment.Whitespace _ ->
      Empty

  appendSegments :: Result a -> Segment a -> Result a

  default appendSegments :: Monoid a => Result a -> Segment a -> Result a
  appendSegments z a =
    z <> convertSegment @tag a

  concatSegments :: NonEmpty (Segment a) -> a

  default concatSegments :: Monoid a => NonEmpty (Segment a) -> a
  concatSegments =
    foldl' (appendSegments @tag) Empty >>> \case
      Empty -> mempty
      Result a -> a

instance {-# overlappable #-} (
    Monoid a,
    IsString a
  ) => Exon ExonDefault a where

instance Exon ExonDefault String where
  convertSegment = \case
    Segment.String a ->
      Result a
    Segment.Expression a ->
      Result a
    Segment.Whitespace a ->
      Result a

instance Exon ExonDefault Text where
  convertSegment = \case
    Segment.String a ->
      Result (toText a)
    Segment.Expression a ->
      Result a
    Segment.Whitespace a ->
      Result (toText a)

instance Exon ExonDefault LText where
  convertSegment = \case
    Segment.String a ->
      Result (toLText a)
    Segment.Expression a ->
      Result a
    Segment.Whitespace a ->
      Result (toLText a)

instance Exon ExonDefault ByteString where
  convertSegment = \case
    Segment.String a ->
      Result (encodeUtf8 a)
    Segment.Expression a ->
      Result a
    Segment.Whitespace a ->
      Result (encodeUtf8 a)

instance Exon ExonDefault LByteString where
  convertSegment = \case
    Segment.String a ->
      Result (encodeUtf8 a)
    Segment.Expression a ->
      Result a
    Segment.Whitespace a ->
      Result (encodeUtf8 a)
