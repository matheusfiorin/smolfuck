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
    finalTape = execute commands initialTape 0
  in map intToDigit initialTape

execute :: Commands -> Tape -> Pointer -> Tape
execute [] tape _ = tape
execute (c:cs) tape pointer
    | pointer < 0 || pointer >= length tape = tape  -- Pointer out-of-bounds
    | otherwise =
        case c of
            '>' -> execute cs tape (pointer + 1)
            '<' -> execute cs tape (pointer - 1)
            '*' -> let (left, (bit:right)) = splitAt pointer tape
                   in execute cs (left ++ (1 - bit):right) pointer
            _   -> execute cs tape pointer

main :: IO()
main = undefined
