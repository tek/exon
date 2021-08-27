module Exon.Test.BasicTest where

import Data.Text (toUpper)
import Hedgehog (TestT, (===))

import Exon.Class.Exon (Exon(..), ExonDefault)
import qualified Exon.Data.Segment as Segment
import Exon.Quote (exon)
import Exon.Data.Result (Result(Result))

newtype Mon =
  Mon String
  deriving (Eq, Show)
  deriving newtype (IsString)

instance Semigroup Mon where
  Mon l <> Mon r =
    Mon (l <> r)

instance Monoid Mon where
  mempty =
    Mon ""

newtype Name =
  Name Text
  deriving newtype (Eq, Show, Monoid, IsString)

instance Semigroup Name where
  Name l <> Name r =
    Name (l <> " | " <> r)

lastName :: Name
lastName = "Fry"

up :: Name -> Name
up (Name name) =
  Name (toUpper name)

test_basic :: TestT IO ()
test_basic = do
  Mon "fooandbar" === [exon|foo
    #{var} bar|]
  "foo and \\#{bar}" === ([exon|foo #{var} \#{bar}|] :: Text)
  "Philip | J. | FRY" === [exon|Philip J. #{up lastName}|]
  where
    var :: IsString a => a
    var =
      "and"

newtype Thing = Thing String deriving newtype (IsString, Semigroup, Monoid, Show, Eq)

instance Exon ExonDefault Thing where
  convertSegment = \case
    Segment.String s -> Result (Thing s)
    Segment.Expression thing -> Result thing
    Segment.Whitespace _ -> Result (Thing " >>> ")

  insertWhitespace s1 ws s2 =
    appendSegment @ExonDefault (appendSegment @ExonDefault s1 (Segment.Whitespace ws)) s2

test_customWhitespace :: TestT IO ()
test_customWhitespace =
  Thing "1 >>> 2 >>> 3" === [exon|1 #{Thing "2"}    3|]
