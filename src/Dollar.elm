module Dollar exposing (..)

type alias Amount = Int

type Dollar 
    = Dollar Int

times : Int -> Dollar -> Dollar
times multiplier dollar =
    Dollar 0

amount : Dollar -> Int
amount (Dollar dollar) =
    dollar
