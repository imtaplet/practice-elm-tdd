module Tests exposing (..)

import Expect
import Fuzz exposing (int)
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
            , fuzz2 int int "plus dollar" <|
                \left right ->
                    let
                        amount =
                            Dollar left |> Money.plus (Dollar right)
                    in
                    Debug.log "amount" amount |> Expect.equal (Dollar (left + right))
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
            , test "Multiplication 2" <|
                \_ ->
                    let
                        amount =
                            Dollar 10 |> Money.plus (Franc 10)
                    in
                    amount |> Expect.equal (Dollar 15)
            , test "round" <|
                \_ ->
                    let
                        amount =
                            Dollar 10 |> Money.plus (Franc 5)
                    in
                    amount |> Expect.equal (Dollar 13)
            ]
        ]
