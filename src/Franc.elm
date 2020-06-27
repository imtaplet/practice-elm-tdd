module Franc exposing (..)


type alias Amount =
    Int


type Franc
    = Franc Int


times : Int -> Franc -> Franc
times multiplier (Franc franc) =
    Franc <| multiplier * franc


amount : Franc -> Int
amount (Franc franc) =
    franc
