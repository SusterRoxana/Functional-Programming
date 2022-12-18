-----------------------
-- John Doe
-- 31.02.2020
-----------------------
-- Edit the lines above with your name and the submission date.

module Card exposing (Card(..), Face(..), Suit(..), cardValue, viewCard, cardToString, deck)

import Html exposing (..)
import Html.Attributes exposing (style)

{-
  Replace with your definitions from assignment 1
-}
type Face = Face
type Suit = Suit 
type Card = Card

faceToString : Face -> String
faceToString face = Debug.todo "Use your faceToString implementation from assignment 1"

suitToString : Suit -> String
suitToString suit = Debug.todo "Use your suitToString implementation from assignment 1"

cardToString : Card -> String
cardToString card = Debug.todo "Use your cardToString implementation from assignment 1"

cardValue : Card -> List Int
cardValue card = Debug.todo "Use your cardValue implementation from assignment 2"

deck : List Card
deck = Debug.todo "Use your deck implementation from assignment 2"

{-
  Modify this function (if needed) to work with your `Card` definition
-}
cardToUnicode : Card -> String
cardToUnicode _ = Debug.todo "Uncomment and complete after you added your implementations"
  -- case face of
  --   Ace -> case suit of 
  --     Spades ->"🂡"
  --     Hearts -> "🂱"
  --     Clubs ->  "🃑"
  --     Diamonds -> "🃁"
  --   Two -> case suit of 
  --     Spades ->"🂢"
  --     Hearts -> "🂲"
  --     Clubs ->  "🃒"
  --     Diamonds -> "🃂"
  --   Three -> case suit of 
  --     Spades ->"🂣"
  --     Hearts -> "🂳"
  --     Clubs ->  "🃓"
  --     Diamonds ->"🃃" 
  --   Four -> case suit of 
  --     Spades ->"🂤"
  --     Hearts -> "🂴"
  --     Clubs ->  "🃔"
  --     Diamonds -> "🃄"
  --   Five -> case suit of 
  --     Spades ->"🂥"
  --     Hearts -> "🂵"
  --     Clubs ->  "🃕"
  --     Diamonds -> "🃅"
  --   Six -> case suit of 
  --     Spades ->"🂦"
  --     Hearts -> "🂶"
  --     Clubs ->  "🃖"
  --     Diamonds -> "🃆"
  --   Seven -> case suit of 
  --     Spades ->"🂧"
  --     Hearts -> "🂷"
  --     Clubs ->  "🃗"
  --     Diamonds -> "🃇"
  --   Eight -> case suit of 
  --     Spades -> "🂨"
  --     Hearts ->  "🂸"
  --     Clubs ->   "🃘"
  --     Diamonds ->  "🃈"
  --   Nine -> case suit of 
  --     Spades -> "🂩"
  --     Hearts ->  "🂹"
  --     Clubs ->   "🃙"
  --     Diamonds ->  "🃉"
  --   Ten -> case suit of 
  --     Spades ->"🂪"
  --     Hearts -> "🂺"
  --     Clubs ->  "🃚"
  --     Diamonds -> "🃊"
  --   Jack -> case suit of 
  --     Spades ->"🂫"
  --     Hearts -> "🂻"
  --     Clubs ->  "🃛"
  --     Diamonds -> "🃋"
  --   Queen -> case suit of 
  --     Spades ->"🂭"
  --     Hearts -> "🂽"
  --     Clubs ->  "🃝"
  --     Diamonds -> "🃍"
  --   King -> case suit of 
  --     Spades -> "🂮"
  --     Hearts -> "🂾"
  --     Clubs ->  "🃞"
  --     Diamonds -> "🃎"


{-
  Modify this function (if needed) to work with your `Card` definition
-}
viewCard : Card -> Html msg
viewCard card = Debug.todo "Uncomment and complete after you added your implementations"
  -- let
  --   suit = Debug.todo "Obtain the suit from card"
  --   face = Debug.todo "Obtain the face from card"
  --   faceName = faceToString face
  --   suitName = suitToString suit
  --   suitColor s = 
  --     case s of
  --       Diamonds -> "red"
  --       Spades -> "black"
  --       Hearts -> "red"
  --       Clubs -> "black"
  --   unicode = cardToUnicode card
  -- in
  --   div [style "display" "inline-block"] [
  --     div [style "font-size" "12em", style "color" (suitColor suit)] [text unicode],
  --     div [style "font-size" "0.8em"]  [text (cardToString card)]
  --   ]