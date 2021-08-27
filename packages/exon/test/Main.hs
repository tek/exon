module Main where

import Exon.Test.BasicTest (test_basic, test_customWhitespace)
import Exon.Test.KeepWsTest (test_keepWs)
import Exon.Test.ShowsPrecTest (test_showsPrec)
import Hedgehog (TestT, property, test, withTests)
import Test.Tasty (TestName, TestTree, defaultMain, testGroup)
import Test.Tasty.Hedgehog (testProperty)

unitTest ::
  TestName ->
  TestT IO () ->
  TestTree
unitTest desc =
  testProperty desc . withTests 1 . property . test

tests :: TestTree
tests =
  testGroup "all" [
    unitTest "basic" test_basic,
    unitTest "custom whitespace handling" test_customWhitespace,
    unitTest "concat showsPrec fragments" test_showsPrec,
    unitTest "keep whitespace quoter" test_keepWs
  ]

main :: IO ()
main =
  defaultMain tests
