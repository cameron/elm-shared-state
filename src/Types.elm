module Types exposing (..)

import Dict exposing (Dict)
import Date exposing (Date)
import Time exposing (Time)


type alias Translations =
    Dict String String


type alias Context =
    { currentTime : Time
    , translate : String -> String
    }


type alias Commit =
    { userName : String
    , sha : String
    , date : Date
    , message : String
    }


type alias Stargazer =
    { login : String
    , avatarUrl : String
    }


type ContextUpdate
    = NoUpdate
    | UpdateTime Time
    | UpdateTranslations Translations


type Language
    = English
    | Finnish
    | FinnishFormal
