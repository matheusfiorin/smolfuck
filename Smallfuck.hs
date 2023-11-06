module Smallfuck where

import Data.Char (intToDigit)

type Tape = [Int]
type Pointer = Int
type Commands = String

parseTape :: String -> Tape
parseTape = map (\c -> read [c] :: Int)

interpreter :: Commands -> String -> String
interpreter commands tape = let
    initialTape = parseTape tape
  in map intToDigit initialTape

main :: IO()
main = undefined
