module Exon.Class.Exon where

import Exon.Data.Result (Result (Empty, Result))
import qualified Exon.Data.Segment as Segment
import Exon.Data.Segment (Segment)

data ExonDefault

data KeepWhitespace

class Exon (tag :: Type) (a :: Type) where
  isEmpty :: a -> Bool
  isEmpty =
    const False

  convertSegment :: Segment a -> Result a

  default convertSegment :: IsString a => Segment a -> Result a
  convertSegment = \case
    Segment.String a ->
      Result (fromString a)
    Segment.Expression a | isEmpty @tag a ->
      Empty
    Segment.Expression a ->
      Result a
    Segment.Whitespace _ ->
      Empty

  appendSegments :: Result a -> Segment a -> Result a

  default appendSegments :: Monoid a => Result a -> Segment a -> Result a
  appendSegments z a =
    z <> convertSegment @tag a

  insertWhitespace :: Result a -> String -> Segment a -> Result a

  default insertWhitespace :: Result a -> String -> Segment a -> Result a
  insertWhitespace s1 _ s2 =
    appendSegments @tag s1 s2

  concatSegments :: NonEmpty (Segment a) -> a

  default concatSegments :: Monoid a => NonEmpty (Segment a) -> a
  concatSegments (h :| t) =
    fold (spin (convertSegment @tag h) t)
    where
      spin :: Result a -> [Segment a] -> Result a
      spin Empty = \case
        [] ->
          Empty
        Segment.Whitespace _ : ss ->
          spin Empty ss
        s1 : ss ->
          spin (convertSegment @tag s1) ss
      spin (Result s1) = \case
        [] ->
          Result s1
        Segment.Whitespace _ : (Segment.Expression a) : ss | isEmpty @tag a ->
          spin (Result s1) ss
        Segment.Whitespace ws : s2 : ss ->
          spin (insertWhitespace @tag (Result s1) ws s2) ss
        [Segment.Whitespace _] ->
          (Result s1)
        s2 : ss ->
          spin (appendSegments @tag (Result s1) s2) ss

instance {-# overlappable #-} (
    Monoid a,
    IsString a
  ) => Exon ExonDefault a where

convertKeepWs ::
  IsString a =>
  Segment a ->
  Result a
convertKeepWs = \case
  Segment.String a ->
    Result (fromString a)
  Segment.Expression a ->
    Result a
  Segment.Whitespace a ->
    Result (fromString a)

concatKeepWs ::
  ∀ tag a .
  Monoid a =>
  Exon tag a =>
  NonEmpty (Segment a) ->
  a
concatKeepWs =
  fold . foldl' (appendSegments @tag) Empty

instance Exon ExonDefault String where
  convertSegment =
    convertKeepWs

  concatSegments =
    concatKeepWs @ExonDefault

instance Exon ExonDefault Text where
  convertSegment =
    convertKeepWs

  concatSegments =
    concatKeepWs @ExonDefault

instance Exon ExonDefault LText where
  convertSegment =
    convertKeepWs

  concatSegments =
    concatKeepWs @ExonDefault

instance Exon ExonDefault ByteString where
  convertSegment =
    convertKeepWs

  concatSegments =
    concatKeepWs @ExonDefault

instance Exon ExonDefault LByteString where
  convertSegment =
    convertKeepWs

  concatSegments =
    concatKeepWs @ExonDefault
