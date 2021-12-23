module Day12 exposing (parseInput, solvePart1)

{-| Day 12: Passage Pathing

Your goal is to find the number of distinct paths that start at start, end at end,
and don't visit small caves more than once. There are two types of caves: big caves
(written in uppercase, like A) and small caves (written in lowercase, like b).

-}

import Dict exposing (Dict)
import Set exposing (Set)
import Utilities exposing (maybeAll)



---------------
-- PARSE
---------------


parseInput : String -> Maybe (Dict String (List String))
parseInput input =
    input
        |> String.trim
        |> String.lines
        |> List.map toTuples
        |> maybeAll
        |> Maybe.map (List.concatMap withReverseEntries)
        |> Maybe.map toDict


toTuples : String -> Maybe ( String, String )
toTuples input =
    case String.split "-" input of
        [ a, b ] ->
            Just ( a, b )

        _ ->
            Nothing


{-| Reverse all entries (since a connection from b to a is also a connection from a to b
-}
withReverseEntries : ( String, String ) -> List ( String, String )
withReverseEntries ( a, b ) =
    [ ( a, b ), ( b, a ) ]


toDict : List ( String, String ) -> Dict String (List String)
toDict connections =
    List.foldl
        (\( a, b ) dictAcc ->
            Dict.update a
                (\nodeConnections ->
                    case nodeConnections of
                        Just list ->
                            Just (b :: list)

                        Nothing ->
                            Just [ b ]
                )
                dictAcc
        )
        Dict.empty
        connections



-----------------------------
-- PART 1
-----------------------------


solvePart1 : Dict String (List String) -> Int
solvePart1 connections =
    traversePaths "start" connections [ "start" ] Set.empty
        |> List.length


traversePaths : String -> Dict String (List String) -> List String -> Set String -> List (List String)
traversePaths node allConnections currentNodePath smallCavesVisited =
    let
        updatedSmallCavesVisited =
            if String.toLower node == node then
                Set.insert node smallCavesVisited

            else
                smallCavesVisited

        -- get the connections for this node, remove small caves already visited
        nodeConnections =
            Dict.get node allConnections
                |> Maybe.withDefault []
                |> removeSmallCaves smallCavesVisited
    in
    -- go through each connection
    List.foldl
        (\nodeName connectionAcc ->
            let
                updatedCurrentPath =
                    nodeName :: currentNodePath
            in
            -- the end node is reached, return the full path that got us here
            if nodeName == "end" then
                updatedCurrentPath :: connectionAcc

            else
                -- we are not at an end node, traverse further into the graph
                -- once returning, append the paths to the accumulator
                -- we are relying on all recursive calls eventually returning to the end node, no infinitely cyclic paths
                List.append
                    (traversePaths nodeName allConnections updatedCurrentPath updatedSmallCavesVisited)
                    connectionAcc
        )
        []
        nodeConnections


removeSmallCaves : Set String -> List String -> List String
removeSmallCaves smallCavesVisited nodeList =
    nodeList
        |> List.filter (\node -> not (Set.member node smallCavesVisited))
