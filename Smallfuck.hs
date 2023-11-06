module Smallfuck where

type Tape = [Int]
type Pointer = Int
type Commands = String

parseTape :: String -> Tape
parseTape = map (\c -> read [c] :: Int)

main :: IO()
main = undefined
