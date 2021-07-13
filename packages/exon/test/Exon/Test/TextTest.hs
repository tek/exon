module Exon.Test.TextTest where

import Data.Text (toUpper)
import Hedgehog (TestT, (===))

import Exon.Quote (exon)

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
up (Name name) = Name (toUpper name)

test_text :: TestT IO ()
test_text = do
  Mon "fooandbar" === [exon|foo
    #{var} bar|]
  "foo and \\#{bar}" === ([exon|foo #{var} \#{bar}|] :: Text)
  "Philip | J. | FRY" === [exon|Philip J. #{up lastName}|]
  where
    var :: IsString a => a
    var =
      "and"
