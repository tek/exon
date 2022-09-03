-- |Description: Internal
module Exon.Class.Exon where

import qualified Data.ByteString.Builder as ByteString
import Data.ByteString.Builder (toLazyByteString)
import qualified Data.Text.Lazy.Builder as Text
import Data.Text.Lazy.Builder (toLazyText)
import Text.Show (showString)

import Exon.Class.Newtype (OverNewtypes, overNewtypes)
import Exon.Data.Result (Result (Empty, Result))
import qualified Exon.Data.Segment as Segment
import Exon.Data.Segment (Segment)

-- |Wrapping a quote type with this causes whitespace to be ignored.
--
-- @since 1.0.0.0
newtype SkipWs a =
  SkipWs a
  deriving stock (Eq, Show, Generic)
  deriving newtype (IsString)

-- |Defined separately because TH chokes on the selector.
--
-- @since 1.0.0.0
skipWs :: SkipWs a -> a
skipWs (SkipWs a) =
  a

-- |Wrapping a quote type with this causes @a@ to be used irrespective of whether it is an unwrappable newtype.
--
-- @since 1.0.0.0
newtype ExonUse a =
  ExonUse { exonUse :: a }
  deriving stock (Eq, Show)
  deriving newtype (IsString)

-- |This class converts a segment into a builder.
--
-- A builder is an auxiliary data type that may improve performance when concatenating segments, like 'Text.Builder'.
-- The default instance uses no builder and is implemented as 'id'.
--
-- @since 1.0.0.0
class ExonBuilder (inner :: Type) (builder :: Type) | inner -> builder where
  -- |Construct a builder from the newtype-unwrapped result type.
  exonBuilder :: inner -> builder

  -- |Convert the result of the builder concatenation back to the newtype-unwrapped result type.
  exonBuilderExtract :: Result builder -> inner

instance {-# overlappable #-} (
    Monoid builder,
    result ~ builder
  ) => ExonBuilder result builder where
  exonBuilder =
    id
  {-# inline exonBuilder #-}
  exonBuilderExtract =
    fold
  {-# inline exonBuilderExtract #-}

instance (
    ExonBuilder a builder
  ) => ExonBuilder (ExonUse a) builder where
  exonBuilder =
    exonBuilder @a . exonUse
  exonBuilderExtract =
    ExonUse . exonBuilderExtract

instance ExonBuilder Text Text.Builder where
  exonBuilder =
    Text.fromText
  {-# inline exonBuilder #-}
  exonBuilderExtract =
    foldMap (toStrict . toLazyText)
  {-# inline exonBuilderExtract #-}

instance ExonBuilder LText Text.Builder where
  exonBuilder =
    Text.fromLazyText
  exonBuilderExtract =
    foldMap toLazyText

instance ExonBuilder ByteString ByteString.Builder where
  exonBuilder =
    ByteString.byteString
  exonBuilderExtract =
    foldMap (toStrict . toLazyByteString)

instance ExonBuilder LByteString ByteString.Builder where
  exonBuilder =
    ByteString.lazyByteString
  exonBuilderExtract =
    foldMap toLazyByteString

-- |This class generalizes 'IsString' for use in 'ExonSegment'.
--
-- When a plain text segment (not interpolated) is processed, it is converted to the result type, which usually happens
-- via 'fromString'.
--
-- For the type of 'Text.Show.showsPrec' (@'String' -> 'String'@), there is no instance of 'IsString', so this class
-- provides an instance that works around that by calling 'showString'.
--
-- @since 1.0.0.0
class ExonString (result :: Type) (builder :: Type) where
  -- |Convert a 'String' to the builder type.
  exonString :: String -> Result builder

  default exonString :: IsString builder => String -> Result builder
  exonString =
    Result . fromString
  {-# inline exonString #-}

  -- |Convert a 'String' containing whitespace to the builder type.
  -- This is only used by whitespace-aware quoters, like 'Exon.exonws' or 'Exon.intron'.
  exonWhitespace :: String -> Result builder

  default exonWhitespace :: String -> Result builder
  exonWhitespace =
    exonString @result @builder
  {-# inline exonWhitespace #-}

instance {-# overlappable #-} IsString a => ExonString result a where

-- |The instance for the type used by 'Text.Show.showsPrec'.
instance ExonString result (String -> String) where
  exonString =
    Result . showString
  {-# inline exonString #-}

-- |The instance used when the result type is wrapped in 'SkipWs', which is done by 'Exon.intron'.
--
-- It returns 'Empty' for any whitespace.
instance (
    IsString builder
  ) => ExonString (SkipWs result) builder where
  exonWhitespace _ =
    Empty
  {-# inline exonWhitespace #-}

-- |This class converts a 'Segment' to a builder.
--
-- The default implementation performs the following conversions for the differnet segment variants:
--
-- - [Segment.String]('Segment.String') and [Segment.Whitespace]('Segment.Whitespace') are plain 'String's parsed
-- literally from the quasiquote.
-- They are converted to the builder type by 'fromString' (handled by 'ExonString').
--
-- - [Segment.Whitespace]('Segment.Whitespace') is ignored when the quoter 'Exon.intron' was used.
--
-- - [Segment.Expression]('Segment.Expression') contains a value of the builder type, which is returned as-is.
--
-- @since 1.0.0.0
class ExonSegment (result :: Type) (builder :: Type) where
  -- |Convert literal string segments to the result type.
  exonSegment :: Segment builder -> Result builder

instance {-# overlappable #-} (
    ExonString result builder
  ) => ExonSegment result builder where
    exonSegment = \case
      Segment.String a ->
        exonString @result a
      Segment.Expression a ->
        Result a
      Segment.Whitespace a ->
        exonWhitespace @result a
    {-# inline exonSegment #-}

-- |This class handles concatenation of segments, which might be a builder or the result type.
--
-- The default instance simply uses '(<>)', and there is only one special instance for @'String' -> 'String'@, the type
-- used by 'Text.Show.showsPrec'.
--
-- @since 1.0.0.0
class ExonAppend (result :: Type) (builder :: Type) where
  -- |Concatenate two segments of the builder type.
  exonAppend :: builder -> builder -> Result builder

instance {-# overlappable #-} (
    Semigroup builder
  ) => ExonAppend result builder where
  exonAppend z a =
    Result (z <> a)
  {-# inline exonAppend #-}

instance ExonAppend result (String -> String) where
  exonAppend z a =
    Result (z . a)
  {-# inline exonAppend #-}

-- |Wrapper for 'exonAppend' that handles the 'Empty' case.
--
-- @since 1.0.0.0
exonAppendResult ::
  ∀ result builder .
  ExonAppend result builder =>
  Result builder ->
  Result builder ->
  Result builder
exonAppendResult (Result z) (Result a) =
  exonAppend @result z a
exonAppendResult z Empty =
  z
exonAppendResult Empty a =
  a
{-# inline exonAppendResult #-}

-- |This class implements the 'Segment' concatenation logic.
--
-- 1. Each 'Segment.Expression' is converted to the builder type by 'ExonBuilder'.
-- 2. Each 'Segment.String' and 'Segment.Whitespace' is converted to the builder type by 'ExonSegment' and 'ExonString'.
-- 3. The segments are folded over 'ExonAppend'.
-- 4. The result is converted from the builder type to the original type by 'ExonBuilder'.
--
-- Each step may be overridden individually
--
-- @since 1.0.0.0
class ExonBuild (result :: Type) (inner :: Type) where
  -- |Concatenate a list of 'Segment's.
  exonBuild :: NonEmpty (Segment inner) -> inner

instance {-# overlappable #-} (
    ExonAppend result builder,
    ExonSegment result builder,
    ExonBuilder inner builder
  ) => ExonBuild result inner where
  exonBuild =
    exonBuilderExtract .
    foldl1 (exonAppendResult @result) .
    fmap (exonSegment @result . fmap exonBuilder)
  {-# inline exonBuild #-}

-- |This class is the main entry point for Exon.
--
-- The default instance unwraps all newtypes that are 'Generic' and passes the innermost type to 'ExonBuild'.
--
-- The original type is also used as a parameter to 'ExonBuild', so customizations can be based on it.
class Exon (result :: Type) where
  -- |Concatenate a list of 'Segment's.
  --
  -- @since 1.0.0.0
  exonProcess :: NonEmpty (Segment result) -> result

instance {-# overlappable #-} (
    OverNewtypes result inner,
    ExonBuild result inner
  ) => Exon result where
    exonProcess =
      overNewtypes @result (exonBuild @result)
    {-# inline exonProcess #-}

-- |Call 'exonProcess', but unwrap the arguments and rewrap the result using the supplied functions.
--
-- @since 1.0.0.0
exonProcessWith ::
  ∀ wrapped result .
  Exon wrapped =>
  (result -> wrapped) ->
  (wrapped -> result) ->
  NonEmpty (Segment result) ->
  result
exonProcessWith unwrap wrap =
  wrap . exonProcess @wrapped . fmap (fmap unwrap)
{-# inline exonProcessWith #-}
