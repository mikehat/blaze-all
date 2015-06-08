{-# LANGUAGE OverloadedStrings #-}

module Main ( main ) where


import Text.Blaze.Html.Renderer.Pretty

import           Text.Blaze.Html5 ( (!) )
import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import qualified Text.Blaze.Css21.Style as S
import           Text.Blaze.Css21.Value 

import Data.Monoid

main = do
    putStrLn $ renderHtml doc

tag_id = A.id

bold' = "font-weight: bold;"
bold = S.fontWeight Bold

italic' = "text-decoration: italic;"
italic = S.textDecoration Italic

fancy = S.fontFamily Cursive ! S.fontSize (Pt 16) ! S.color Silver

left_border = S.borderLeft $ Values [ Black , Solid , Pt 3 ]
right_border = S.borderRightColor Black ! S.borderRightStyle Solid ! S.borderRightWidth (Pt 3)

doc = H.docTypeHtml $ do
    H.head $ do
        H.title "title"
    H.body $ do
        -- even simple use is prettier
        H.div ! A.style "font-weight: bold;" $ "text"
        H.div ! S.fontWeight Bold $ "text"
        H.hr

        -- composing styles is too, but less efficient than hard-coded styles
        H.div ! A.style "border-color: black; border-style: solid;" $ "text"
        H.div ! S.borderColor Black ! S.borderStyle Solid $ "text"
        H.hr

        -- composing a style string is ugly
        H.div ! A.style (H.stringValue $ bold' ++ italic') $ H.span "bold italic"
        H.div ! bold ! italic $ H.span "bold italic"
        H.hr

        -- doing this without the CSS additions would be putrid
        H.div ! tag_id "apples" ! fancy ! left_border $ "fancy"

        -- all of the above applies to building class attribute values as well
