{-# options_haddock hide #-}
-- |Description: Prelude
{-# language NoImplicitPrelude #-}

module Exon.Prelude (
  module Data.Kind,
  module Exon.Debug,
  module GHC.Err,
  module Relude,
) where

import Data.Kind (Type)
import GHC.Err (undefined)

import Exon.Debug (dbg, dbgs, dbgs_, tr, trs, trs')
import Relude hiding (Type, undefined)
