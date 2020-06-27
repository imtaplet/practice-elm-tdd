module Dollar exposing (..)


type alias Amount =
    Int


type Dollar
    = Dollar Int


times : Int -> Dollar -> Dollar
times multiplier (Dollar dollar) =
    Dollar <| multiplier * dollar


amount : Dollar -> Int
amount (Dollar dollar) =
    dollar
