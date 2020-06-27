module Tests exposing (..)

import Dollar exposing (..)
import Expect
import Test exposing (..)


all : Test
all =
    describe "Money Test"
        [ describe "Dollar"
            [ test "Multiplication 1" <|
                \_ ->
                    let
                        amount =
                            Dollar 5 |> Dollar.times 2 |> Dollar.amount
                    in
                    amount |> Expect.equal 10
            , test "Multiplication 2" <|
                \_ ->
                    let
                        fifteen =
                            Dollar 5 |> Dollar.times 3 |> Dollar.amount
                    in
                    fifteen |> Expect.equal 15
            ]
        ]
