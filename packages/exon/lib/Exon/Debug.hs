{-# options_haddock hide #-}
-- |Description: Debug Printing Combinators
{-# language NoImplicitPrelude #-}

module Exon.Debug where

import qualified Data.Text as Text
import GHC.Stack (SrcLoc (..))
import Relude
import System.IO.Unsafe (unsafePerformIO)

srcLoc :: CallStack -> SrcLoc
srcLoc = \case
  (getCallStack -> (_, loc) : _) -> loc
  _ -> error "Debug.srcLoc: empty CallStack"

debugPrint ::
  SrcLoc ->
  Text ->
  IO ()
debugPrint SrcLoc{srcLocModule = toText -> slm, srcLocStartLine} msg =
  putStrLn (moduleName <> ":" <> show srcLocStartLine <> " " <> toString msg)
  where
    moduleName =
      toString $ fromMaybe slm $ listToMaybe $ reverse $ Text.splitOn "." slm

debugPrintWithLoc ::
  Monad m =>
  SrcLoc ->
  Text ->
  m ()
debugPrintWithLoc loc msg = do
  () <- return (unsafePerformIO (debugPrint loc msg))
  pure ()

dbg ::
  HasCallStack =>
  Monad m =>
  Text ->
  m ()
dbg =
  debugPrintWithLoc (srcLoc callStack)
{-# inline dbg #-}

dbgsWith ::
  HasCallStack =>
  Monad m =>
  Show a =>
  Text ->
  a ->
  m ()
dbgsWith prefix a =
  debugPrintWithLoc (srcLoc callStack) (prefix <> ": " <> show a)
{-# inline dbgsWith #-}

dbgs ::
  HasCallStack =>
  Monad m =>
  Show a =>
  a ->
  m ()
dbgs a =
  debugPrintWithLoc (srcLoc callStack) (show a)
{-# inline dbgs_ #-}

dbgs_ ::
  HasCallStack =>
  Monad m =>
  Show a =>
  a ->
  m a
dbgs_ a =
  a <$ debugPrintWithLoc (srcLoc callStack) (show a)
{-# inline dbgs #-}

tr ::
  HasCallStack =>
  Text ->
  a ->
  a
tr msg a =
  unsafePerformIO (a <$ debugPrint (srcLoc callStack) msg)
{-# inline tr #-}

trs ::
  Show a =>
  HasCallStack =>
  a ->
  a
trs a =
  unsafePerformIO (a <$ debugPrint (srcLoc callStack) (show a))
{-# inline trs #-}

trs' ::
  Show b =>
  HasCallStack =>
  b ->
  a ->
  a
trs' b a =
  unsafePerformIO (a <$ debugPrint (srcLoc callStack) (show b))
{-# inline trs' #-}
