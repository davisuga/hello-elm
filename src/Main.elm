module Main exposing (main)

import Html exposing (div, h1, img, li, text, ul)
import Html.Attributes exposing (..)


initialModel =
    {photos = [ { url = "1.jpeg" }
    , { url = "2.jpeg" }
    , { url = "3.jpeg" }
    ]
    , selectedPhoto = "1.jpeg"
    
    }


urlPrefix =
    "http://elm-in-action.com/"


viewThumbnail thumb =
    img [ src (urlPrefix ++ thumb.url) ] []


view model =
    div [ class "content" ]
        [ h1 [] [ text "My pics" ]
        , div [ id "thumbs" ]
            (List.map viewThumbnail
                model.photos
            )
        ]


main =
    view initialModel
