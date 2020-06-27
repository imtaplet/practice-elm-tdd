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


plus : Money -> Money -> Money
plus left right =
    let
        francRatio =
            0.5
    in
    case ( left, right ) of
        ( Dollar leftDollarAmount, Dollar rightDollarAmount ) ->
            leftDollarAmount
                + rightDollarAmount
                |> Dollar

        ( Dollar leftDollarAmount, Franc rightFrancAmount ) ->
            leftDollarAmount
                + (toFloat rightFrancAmount * francRatio |> round)
                |> Dollar

        ( Franc leftFrancAmount, Dollar rightDollarAmount ) ->
            (toFloat leftFrancAmount * francRatio |> round)
                + rightDollarAmount
                |> Dollar

        ( Franc leftFrancAmount, Franc rightFrancAmount ) ->
            (toFloat leftFrancAmount * francRatio |> round)
                + (toFloat rightFrancAmount * francRatio |> round)
                |> Dollar
