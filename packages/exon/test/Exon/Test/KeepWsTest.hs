module Exon.Test.KeepWsTest where

import Hedgehog (TestT, (===))

import Exon.Quote (exon, exonws)

newtype Mon =
  Mon String
  deriving (Eq, Show)
  deriving newtype (IsString, Semigroup, Monoid)

test_keepWs :: TestT IO ()
test_keepWs = do
  Mon "foo\n    and bar" === [exonws|foo
    #{var} bar|]
  "foo and bar" === [exon|foo #{var @Text} bar|]
  "foo and bar" === [exon|foo #{var @ByteString} bar|]
  where
    var :: IsString a => a
    var =
      "and"
