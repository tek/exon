module Main where

import Exon.Test.BasicTest (test_basic, test_keepWhitespace)
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
    unitTest "keep whitespace" test_keepWhitespace
  ]

main :: IO ()
main =
  defaultMain tests
