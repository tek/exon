# 1.0.0.0

* Rewrite the main logic, splitting it across multiple classes.
* Automatically unwrap `Generic` newtype segments.
* Use builders like `Text.Builder`, unwrapping `Generic` newtypes of the result type.
* Don't treat whitespace as special in the default quoter.

# 0.2.0.0

* Add `exonws`, a variant that preserves whitespace.
* Add `exonWith`, a constructor for custom quasiquoters.

# 0.1.1.0

* Add `Exon` instance for `String -> String`, used by `showsPrec`.
