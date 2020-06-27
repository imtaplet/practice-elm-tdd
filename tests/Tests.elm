module Tests exposing (..)

import Money exposing (..)
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
                            Dollar 5 |> Money.times 2
                    in
                    amount |> Expect.equal (Dollar 10)
            , test "Multiplication 2" <|
                \_ ->
                    let
                        fifteen =
                            Dollar 5 |> Money.times 3
                    in
                    fifteen |> Expect.equal (Dollar 15)
            ]
        , describe "Franc"
            [ test "Multiplication 1" <|
                \_ ->
                    let
                        amount =
                            Franc 5 |> Money.times 2
                    in
                    amount |> Expect.equal (Franc 10)
            , test "Multiplication 2" <|
                \_ ->
                    let
                        fifteen =
                            Franc 5 |> Money.times 3
                    in
                    fifteen |> Expect.equal (Franc 15)
            ]
        , describe "Multicurrency"
            [ test "Multiplication 1" <|
                \_ ->
                    let
                        amount =
                            Dollar 5 |> Money.plus (Franc 10)
                    in
                    amount |> Expect.equal (Dollar 10)
            ]
        ]
