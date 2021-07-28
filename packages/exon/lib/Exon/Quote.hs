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
import Language.Haskell.TH (Exp (AppE, InfixE, ListE), Q, extsEnabled, runQ)
import Language.Haskell.TH.Quote (QuasiQuoter (QuasiQuoter))
import Language.Haskell.TH.Syntax (Quasi)

import Exon.Class.Exon (ExonDefault, concatSegments)
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

quoteExp ::
  QOrIO m =>
  String ->
  m Exp
quoteExp code = do
  raw <- segmentsQ code
  hseg :| segs <- reifySegments raw
  conc <- runQ [e|concatSegments @ExonDefault|]
  consE <- runQ [e|(:|)|]
  pure (AppE conc (InfixE (Just hseg) consE (Just (ListE segs))))

exon :: QuasiQuoter
exon =
  QuasiQuoter quoteExp (err "pattern") (err "type") (err "decl")
  where
    err :: String -> String -> Q a
    err tpe _ =
      exonError ("Cannot quote " <> tpe)
