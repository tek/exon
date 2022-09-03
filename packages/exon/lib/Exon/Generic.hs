{-# options_haddock prune #-}

-- |Description: Internal
module Exon.Generic where

import Generics.SOP (All2, I (I), NP (Nil, (:*)), NS (S, Z), SOP (SOP), Top)
import Generics.SOP.GGP (GCode, GDatatypeInfoOf, GFrom, GTo, gfrom, gto)
import Generics.SOP.Type.Metadata (DatatypeInfo (Newtype))

type ReifySOP (a :: Type) (ass :: [[Type]]) =
  (Generic a, GTo a, GCode a ~ ass, All2 Top ass)

type ConstructSOP (a :: Type) (ass :: [[Type]]) =
  (Generic a, GFrom a, GCode a ~ ass, All2 Top ass)

type ReifyNt (a :: Type) (b :: Type) =
  ReifySOP a '[ '[b] ]

type GenNt (a :: Type) (b :: Type) =
  ConstructSOP a '[ '[b] ]

type OverNt (a :: Type) (b :: Type) =
  (ReifyNt a b, GenNt a b)

unwrap ::
  GenNt a b =>
  a ->
  b
unwrap a =
  case gfrom a of
    SOP (Z (I b :* Nil)) -> b
    SOP (S n) -> case n of

wrap ::
  ReifyNt a b =>
  b ->
  a
wrap b =
  gto (SOP (Z (I b :* Nil)))

class GDatatypeInfoIsNewtype (dss :: [[Type]]) (info :: DatatypeInfo) (wrapped :: Maybe Type) | dss info -> wrapped
instance {-# incoherent #-} wrapped ~ 'Nothing => GDatatypeInfoIsNewtype dss info wrapped
instance wrapped ~ 'Just d => GDatatypeInfoIsNewtype '[ '[d]] ('Newtype m n c) wrapped

class IsNewtype d (wrapped :: Maybe Type) | d -> wrapped
instance GDatatypeInfoIsNewtype (GCode d) (GDatatypeInfoOf d) wrapped => IsNewtype d wrapped
