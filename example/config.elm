
module Config exposing (Config, config)

type alias Config =
    { apiUrl : String
    , defaultTimeout : Float
    }

config : Config
config =
    { apiUrl = "https://host.com"
    , defaultTimeout = 5000
    }
