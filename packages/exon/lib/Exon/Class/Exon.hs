-- |Description: Internal
module Exon.Class.Exon where

import Text.Show (showString)

import Exon.Data.Result (Result (Empty, Result))
import qualified Exon.Data.Segment as Segment
import Exon.Data.Segment (Segment)

-- |The tag for the default quoter 'Exon.exon'.
data ExonDefault

-- |The tag for the quoter 'Exon.exonws', keeping whitespace verbatim.
data KeepWhitespace

{- |
This class is responsible for combining segments of an interpolated string, allowing users to define their own rules
for how the result is constructed.
The default implementation converts each literal part with 'IsString' and uses the result type's 'Monoid' to
concatenate them.

The raw parts are encoded as 'Segment', getting combined into a 'Result'.

The default for 'convertSegment' skips whitespace by encoding it into the 'Result' constructor 'Empty', which is a
unit object.
To change this behavior, it can be easily overridden:

@
newtype Thing = Thing String deriving newtype (IsString, Semigroup, Monoid, Show)

instance Exon ExonDefault Thing where
  convertSegment = \case
    Segment.String s -> Result (Thing s)
    Segment.Expression thing -> Result thing
    Segment.Whitespace _ -> Result (Thing " >>> ")

  insertWhitespace s1 ws s2 =
    appendSegment @ExonDefault (appendSegment @ExonDefault s1 (Segment.Whitespace ws)) s2
@
-}
class Exon (tag :: Type) (a :: Type) where

  -- |This check is used to allow empty expression segments to be skipped when they are empty.
  -- The default is to never skip expressions.
  isEmpty :: a -> Bool
  isEmpty =
    const False

  -- |Convert a 'Segment' to a 'Result'.
  -- The default implementation uses 'IsString' and ignores whitespace, returning 'Empty'.
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

  -- |Append a 'Segment' to a 'Result'.
  -- The default implementation uses '(<>)'.
  appendSegment :: Result a -> Segment a -> Result a

  default appendSegment :: Semigroup a => Result a -> Segment a -> Result a
  appendSegment z a =
    z <> convertSegment @tag a

  -- |Append whitespace and a 'Segment' to a 'Result', i.e. joining two parts of the interpolation by whitespace.
  -- The default implementation ignores the whitespace, calling 'appendSegment' with the second argument.
  insertWhitespace :: Result a -> String -> Segment a -> Result a

  default insertWhitespace :: Result a -> String -> Segment a -> Result a
  insertWhitespace s1 _ =
    appendSegment @tag s1

  -- |The entry point for concatenation, taking a list of segments parsed from the interpolation.
  -- The default implementation skips leading whitespace and calls 'appendSegment' and 'insertWhitespace' to
  -- concatenate.
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
          spin (appendSegment @tag (Result s1) s2) ss

instance {-# overlappable #-} (
    Monoid a,
    IsString a
  ) => Exon ExonDefault a where

-- |Variant of 'convertSegment' that preserves whitespace verbatim.
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

-- |Variant of 'concatSegments' that preserves whitespace verbatim.
concatKeepWs ::
  ∀ tag a .
  Monoid a =>
  Exon tag a =>
  NonEmpty (Segment a) ->
  a
concatKeepWs =
  fold . foldl' (appendSegment @tag) Empty

instance (
    Monoid a,
    IsString a
  ) => Exon KeepWhitespace a where
  convertSegment =
    convertKeepWs

  concatSegments =
    concatKeepWs @KeepWhitespace

instance Exon ExonDefault String where
  convertSegment =
    convertKeepWs

  concatSegments =
    concatKeepWs @ExonDefault

instance Exon ExonDefault Text where
  convertSegment =
    convertSegment @KeepWhitespace

  concatSegments =
    concatSegments @KeepWhitespace

instance Exon ExonDefault LText where
  convertSegment =
    convertSegment @KeepWhitespace

  concatSegments =
    concatSegments @KeepWhitespace

instance Exon ExonDefault ByteString where
  convertSegment =
    convertSegment @KeepWhitespace

  concatSegments =
    concatSegments @KeepWhitespace

instance Exon ExonDefault LByteString where
  convertSegment =
    convertSegment @KeepWhitespace

  concatSegments =
    concatSegments @KeepWhitespace

instance Exon ExonDefault (String -> String) where
  convertSegment = \case
    Segment.String a ->
      Result (showString a)
    Segment.Expression a | isEmpty @ExonDefault a ->
      Empty
    Segment.Expression a ->
      Result a
    Segment.Whitespace ws ->
      Result (showString ws)

  appendSegment z a =
    case (z, convertSegment @ExonDefault a) of
      (Result z', Result a') ->
        Result (z' . a')
      (z', Empty) ->
        z'
      (Empty, a') ->
        a'

  concatSegments =
    concatKeepWs @ExonDefault
