{-# options_haddock prune #-}
-- |Description: Internal
module Exon.Quote where

import Data.Traversable (for)
import Language.Haskell.Exts (
  Extension,
  ParseMode (extensions),
  ParseResult (ParseFailed, ParseOk),
  defaultParseMode,
  parseExpWithMode,
  parseExtension,
  )
import Language.Haskell.Meta (toExp)
import qualified Language.Haskell.TH as TH
import Language.Haskell.TH (Exp (AppE, InfixE, ListE), Q, extsEnabled, runQ)
import Language.Haskell.TH.Quote (QuasiQuoter (QuasiQuoter))
import Language.Haskell.TH.Syntax (Quasi)

import Exon.Class.Exon (ExonDefault, KeepWhitespace, concatSegments)
import Exon.Data.RawSegment (RawSegment (ExpSegment, StringSegment, WsSegment))
import qualified Exon.Data.Segment as Segment
import Exon.Parse (parse)

exonError ::
  ToString e =>
  MonadFail m =>
  e ->
  m a
exonError err =
  fail ("Exon: " <> toString err)

segmentsQ ::
  QOrIO m =>
  String ->
  m (NonEmpty RawSegment)
segmentsQ =
  parse >>> fmap nonEmpty >>> \case
    Right (Just segs) -> pure segs
    Right Nothing -> pure (pure (StringSegment ""))
    Left err -> exonError err

class Quasi m => QOrIO (m :: Type -> Type) where
  fileExtensions :: m [Extension]

instance QOrIO IO where
  fileExtensions =
    pure []

instance QOrIO Q where
  fileExtensions =
    fmap (fmap (parseExtension . show)) extsEnabled

reifyExp ::
  QOrIO m =>
  String ->
  m Exp
reifyExp s = do
  exts <- fileExtensions
  case parseExpWithMode defaultParseMode { extensions = exts } s of
    ParseFailed _ err -> exonError err
    ParseOk e -> pure (toExp e)

reifySegments ::
  QOrIO m =>
  NonEmpty RawSegment ->
  m (NonEmpty Exp)
reifySegments segs = do
  expCon <- runQ [e|Segment.Expression|]
  for segs \case
    StringSegment s ->
      runQ [e|Segment.String s|]
    ExpSegment s -> do
      e <- reifyExp s
      pure (AppE expCon e)
    WsSegment s ->
     runQ [e|Segment.Whitespace s|]

quoteExpWith ::
  QOrIO m =>
  Q TH.Type ->
  String ->
  m Exp
quoteExpWith tag code = do
  raw <- segmentsQ code
  hseg :| segs <- reifySegments raw
  conc <- runQ [e|concatSegments @($tag)|]
  consE <- runQ [e|(:|)|]
  pure (AppE conc (InfixE (Just hseg) consE (Just (ListE segs))))

quoteExp ::
  QOrIO m =>
  String ->
  m Exp
quoteExp =
  quoteExpWith [t|ExonDefault|]

-- |Constructor for a quasiquoter for an arbitrary tag.
--
-- This can be used to define quoters with custom logic, requiring an instance of 'Exon.Class.Exon' for the given type:
--
-- >>> import Exon.Class.Exon (Exon(..))
-- >>> import Exon.Data.Segment (Segment(String))
-- >>> data Nl
-- >>> instance (Monoid a, IsString a) => Exon Nl a where insertWhitespace s1 _ s2 = appendSegment @Nl (appendSegment @Nl s1 (String "\n")) s2
-- >>> exonnl = exonWith [t|Nl|]
-- >>> [exonnl|one   two     three|]
-- "one\ntwo\nthree"
--
-- @since 0.2.0.0
exonWith :: Q TH.Type -> QuasiQuoter
exonWith tag =
  QuasiQuoter (quoteExpWith tag) (err "pattern") (err "type") (err "decl")
  where
    err :: String -> String -> Q a
    err tpe _ =
      exonError ("Cannot quote " <> tpe)

-- |A quasiquoter that allows interpolation, concatenating the resulting segments monoidally.
--
-- >>> [exon|write #{show @Text (5 :: Int)} lines of code|] :: Text
-- "write 5 lines of code"
--
-- The default implementation for any non-stringly type uses 'IsString' to construct the literal segments and 'mappend'
-- to combine them, ignoring whitespace segments.
--
-- >>> newtype Part = Part Text deriving newtype (Show, Semigroup, Monoid, IsString)
--
-- >>> [exon|x #{Part "y"}z|] :: Part
-- "xyz"
--
-- This behavior can be customized by writing an instance of 'Exon.Exon'.
exon :: QuasiQuoter
exon =
  exonWith [t|ExonDefault|]

-- |A variant of 'exon' that always keeps whitespace verbatim.
--
-- @since 0.2.0.0
exonws :: QuasiQuoter
exonws =
  exonWith [t|KeepWhitespace|]
