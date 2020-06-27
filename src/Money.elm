module Money exposing (..)


type alias Amount =
    Int


type Money
    = Dollar Amount
    | Franc Amount


times : Int -> Money -> Money
times multiplier money =
    case money of
        Dollar dollarAmount ->
            Dollar <| multiplier * dollarAmount

        Franc francAmount ->
            Franc <| multiplier * francAmount


amount : Money -> Amount
amount money =
    case money of
        Dollar dollarAmount ->
            dollarAmount

        Franc francAmount ->
            francAmount
