module Franc exposing (..)


type alias Amount =
    Int


type Franc
    = Franc Amount


times : Int -> Franc -> Franc
times multiplier (Franc franc) =
    Franc <| multiplier * franc


amount : Franc -> Amount
amount (Franc franc) =
    franc
