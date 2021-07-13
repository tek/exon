This Haskell library provides quasiquote string interpolation with customizable concatenation for arbitrary types.

The default case uses `Monoid` and `IsString`:

```haskell
import Exon (exon)
import Data.Text (toUpper)

newtype Name =
  Name Text
  deriving newtype (Show, Monoid, IsString)

instance Semigroup Name where
  Name l <> Name r = Name (l <> " | " <> r)

lastName :: Name
lastName = "Fry"

up :: Name -> Name
up (Name name) = Name (toUpper name)

>>> [exon|Philip J. #{up lastName}|]
Name "Philip | J. | FRY"
```

Individual segments are tokenized at whitespace boundaries, expressions between `#{` and `}` are inserted verbatim.

The default implementation ignores whitespace when concatenating, while it is preserved for `String`, `Text` etc.

# Customization

Concatenation is performed by the class `Exon.Exon`:

```haskell
class Exon (tag :: Type) (a :: Type) where
  convertSegment :: Segment a -> Result a

  appendSegments :: Result a -> Segment a -> Result a

  insertWhitespace :: Result a -> String -> Segment a -> Result a

  concatSegments :: NonEmpty (Segment a) -> a
```

All methods have default implementations.
The `tag` parameter is an arbitrary type that allows the creation of different quoters, with `exon` using the tag
`ExonDefault.`

In order to get the default quoter to support custom rules for a type, one simply has to write an instance:

```haskell
import Exon (Exon, ExonDefault, Result)
import qualified Exon as Segment (Segment(..))

instance Exon ExonDefault Name where
  convertSegment = \case
    Segment.String s -> Result (Name s)
    Segment.Expression name -> Result name
    Segment.Whitespace ws -> Result (Name " >>> ")
```

# Acknowledgments

Inspired by the magnificent [string-interpolate].

[string-interpolate]: https://hackage.haskell.org/package/string-interpolate
