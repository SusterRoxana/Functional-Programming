module Main where

passwords :: [String]
passwords = error "TODO"

data User = User {email :: Email, password :: Password} deriving (Show, Eq)

data Password = Password String deriving (Show, Eq)

data Email = Email {username :: String, domain:: String} deriving (Show, Eq)

validatePassword :: String -> Maybe Password
validatePassword _ = error "TODO"

validateEmail :: String -> Maybe Email
validateEmail _ = error "TODO"

validateUser :: String -> String -> Maybe User
validateUser email password = error "TODO"

main :: IO ()
main = error "TODO"