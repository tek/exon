module Exon (
  -- $intro
  exon,
  exonws,
  exonWith,
  -- * Customizing Concatenation
  module Exon.Class.Exon,
  -- * Combinators
  module Exon.Combinators,
  -- * Data Types
  module Exon.Data.Segment,
  module Exon.Data.Result,
) where

import Exon.Class.Exon (Exon (..), ExonDefault, KeepWhitespace)
import Exon.Combinators (intercalate)
import Exon.Data.Result (Result (..))
import Exon.Data.Segment (Segment (..))
import Exon.Quote (exon, exonWith, exonws)

-- $intro
-- This Haskell library provides quasiquote string interpolation with customizable concatenation for arbitrary types.
--
-- The default case uses `Monoid` and `IsString`:
--
-- @
-- import Exon (exon)
-- import Data.Text (toUpper)
--
-- newtype Name =
--   Name Text
--   deriving newtype (Show, Monoid, IsString)
--
-- instance Semigroup Name where
--   Name l <> Name r = Name (l <> " | " <> r)
--
-- lastName :: Name
-- lastName = "Fry"
--
-- up :: Name -> Name
-- up (Name name) = Name (toUpper name)
--
-- >>> [exon|Philip J. #{up lastName}|]
-- Name "Philip | J. | FRY"
--
-- @
--
-- Individual segments are tokenized at whitespace boundaries, expressions between `#{` and `}` are inserted verbatim.
--
-- The default implementation ignores whitespace when concatenating, while it is preserved for `String`, `Text` etc.
