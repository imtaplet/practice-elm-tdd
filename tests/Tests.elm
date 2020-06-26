module Tests exposing (..)

import Test exposing (..)
import Expect

import Dollar exposing (..)

all : Test
all =
    describe "Money Test"
        [ test "Multiplication" <|
            \_ -> 
                let
                    amount = Dollar 5 |> Dollar.times 2 |> Dollar.amount
                in
                    amount |> Expect.equal 10
        ]
