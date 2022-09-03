{-# options_haddock prune #-}

-- |Description: The parser for the quasiquote body, using "FlatParse".
module Exon.Parse where

import Data.Char (isSpace)
import qualified FlatParse.Stateful as FlatParse
import FlatParse.Stateful (
  Result (Err, Fail, OK),
  anyChar,
  branch,
  char,
  empty,
  eof,
  get,
  inSpan,
  lookahead,
  modify,
  put,
  runParserS,
  satisfy,
  some_,
  string,
  takeRest,
  withSpan,
  (<|>),
  )
import Prelude hiding (empty, span, (<|>))

import Exon.Data.RawSegment (RawSegment (AutoExpSegment, ExpSegment, StringSegment, WsSegment))

type Parser =
  FlatParse.Parser Int Text

span :: Parser () -> Parser String
span seek =
  withSpan seek \ _ sp -> inSpan sp takeRest

ws :: Parser Char
ws =
  satisfy isSpace

whitespace :: Parser RawSegment
whitespace =
  WsSegment <$> span (some_ ws)

before ::
  Parser a ->
  Parser () ->
  Parser () ->
  Parser ()
before =
  branch . lookahead

finishBefore ::
  Parser a ->
  Parser () ->
  Parser ()
finishBefore cond =
  before cond unit

expr :: Parser ()
expr =
  branch $(char '{') (modify (1 +) *> expr) $
  before $(char '}') closing (anyChar *> expr)
  where
    closing =
      get >>= \case
        0 -> unit
        cur -> put (cur - 1) *> $(char '}') *> expr

autoInterpolation :: Parser RawSegment
autoInterpolation =
  $(string "##{") *> (AutoExpSegment <$> span expr) <* $(char '}')

verbatimInterpolation :: Parser RawSegment
verbatimInterpolation =
  $(string "#{") *> (ExpSegment <$> span expr) <* $(char '}')

untilTokenEnd :: Parser ()
untilTokenEnd =
  branch $(char '\\') (anyChar *> untilTokenEnd) $
  finishBefore ($(string "##{") <|> $(string "#{")) $
  eof <|> (anyChar *> untilTokenEnd)

untilTokenEndWs :: Parser ()
untilTokenEndWs =
  branch $(char '\\') (anyChar *> untilTokenEndWs) $
  finishBefore ($(string "##{") <|> $(string "#{") <|> void ws) $
  eof <|> (anyChar *> untilTokenEndWs)

text :: Parser RawSegment
text =
  StringSegment <$> span untilTokenEnd

textWs :: Parser RawSegment
textWs =
  StringSegment <$> span untilTokenEndWs

segment :: Parser RawSegment
segment =
  branch eof empty (autoInterpolation <|> verbatimInterpolation <|> text)

segmentWs :: Parser RawSegment
segmentWs =
  branch eof empty (whitespace <|> autoInterpolation <|> verbatimInterpolation <|> textWs)

parser :: Parser [RawSegment]
parser =
  FlatParse.many segment

parserWs :: Parser [RawSegment]
parserWs =
  FlatParse.many segmentWs

parseWith :: Parser [RawSegment] -> String -> Either Text [RawSegment]
parseWith p =
  runParserS p 0 0 >>> \case
    OK a _ "" -> Right a
    OK _ _ u -> Left ("unconsumed: " <> decodeUtf8 u)
    Fail -> Left "fail"
    Err e -> Left e

parse :: String -> Either Text [RawSegment]
parse =
  parseWith parser

parseWs :: String -> Either Text [RawSegment]
parseWs =
  parseWith parserWs
