module Dollar exposing (..)


type alias Amount =
    Int


type Dollar
    = Dollar Amount


times : Int -> Dollar -> Dollar
times multiplier (Dollar dollar) =
    Dollar <| multiplier * dollar


amount : Dollar -> Amount
amount (Dollar dollar) =
    dollar
