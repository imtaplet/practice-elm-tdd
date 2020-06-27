module Tests exposing (..)

import Expect
import Money exposing (..)
import Test exposing (..)


all : Test
all =
    describe "Money Test"
        [ describe "Dollar"
            [ test "Multiplication 1" <|
                \_ ->
                    let
                        amount =
                            Dollar 5 |> Money.times 2 |> Money.amount
                    in
                    amount |> Expect.equal 10
            , test "Multiplication 2" <|
                \_ ->
                    let
                        fifteen =
                            Dollar 5 |> Money.times 3 |> Money.amount
                    in
                    fifteen |> Expect.equal 15
            ]
        , describe "Franc"
            [ test "Multiplication 1" <|
                \_ ->
                    let
                        amount =
                            Franc 5 |> Money.times 2 |> Money.amount
                    in
                    amount |> Expect.equal 10
            , test "Multiplication 2" <|
                \_ ->
                    let
                        fifteen =
                            Franc 5 |> Money.times 3 |> Money.amount
                    in
                    fifteen |> Expect.equal 15
            ]
        ]
