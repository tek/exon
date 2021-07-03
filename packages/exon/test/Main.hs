module Main where

import Exon.Test.TextTest (test_text)
import Test.Tasty (TestTree, defaultMain, testGroup, TestName)
import Test.Tasty.Hedgehog (testProperty)
import Hedgehog (withTests, property, test, TestT)

unitTest ::
  TestName ->
  TestT IO () ->
  TestTree
unitTest desc =
  testProperty desc . withTests 1 . property . test

tests :: TestTree
tests =
  testGroup "all" [
    unitTest "text" test_text
  ]

main :: IO ()
main =
  defaultMain tests
