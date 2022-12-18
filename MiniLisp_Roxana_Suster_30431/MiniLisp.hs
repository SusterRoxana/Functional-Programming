-- Suster Elena-Roxana
-- 11.01.2021
module MiniLisp where

import Parser

data LispAtom = Number Int | Symbol String deriving (Eq, Show)
data LispValue = List [LispValue] | Atom LispAtom deriving (Eq, Show)

ws :: Parser String
ws = many (orElse (char(' ')) (char('\n')))

between :: Parser a -> Parser b -> Parser c -> Parser c
between pHd pT1 p = pHd `pThen` (pMap fst (p `andThen` pT1))

-- ident function 
ident :: Parser String
ident = Parser inner where
        inner input =
          let
              p1 = orElse upper lower
              p2 = many (p1 `orElse` (char '?') `orElse` digit)
          in
              case runParser p1 input of
                   Error err -> Error err
                   Success a rest -> runParser p2 input

-- 12.3.1
sepBy :: Parser a -> Parser b -> Parser [b]
sepBy sep p = Parser inner where
    inner "" = Error "empty"
    inner input =
        case runParser p input of
            Success r remaining ->
                case runParser (many (pThen sep p)) remaining of
                    Success rs rest -> Success (r:rs) rest
            Error err -> Error err
			
-- 12.3.2	      
lispAtom :: Parser LispAtom
lispAtom =  Parser inner where
    inner input = case runParser number input of
                        Error err -> case runParser ident input of
                                        Error eror -> Error eror
                                        Success list remaining -> if remaining == "" then Success (Symbol list) remaining
                                                               else Error remaining
                        Success nr rest -> if rest == "" then Success (Number nr) rest
                                          else Error rest

-- 12.3.3

lispList :: Parser [LispValue]
lispList = Parser inner where 
  inner "" = Error "empty"
  inner input = case runParser (between ( char '(' ) (char ')') (sepBy ws ident)) input of
                    Success list "" -> let
                                          helper l =
                                           case l of
                                             x:xs -> case runParser lispAtom x of
                                                          Success r rest -> (Atom r):helper xs
                                             []->[]
                                       in
                                        case helper list of
                                         [] -> Error "empty"
                                         x:xs -> Success (x:xs) ""
                    Error err -> Error err

-- 12.3.4
lisp :: Parser LispValue
lisp = Parser inner where
 inner input =
  case runParser lispList input of
   Success list "" -> Success (List list) ""
   Error err -> case runParser lispAtom input of
                     Success l rest -> Success (Atom l) rest
                     Error err -> Error err

					
				
