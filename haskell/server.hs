module Main where
import Happstack.Server (ServerPart, look, nullConf, simpleHTTP, ok)

answerQuestion :: String -> String
answerQuestion question = "ohai " ++ question

server :: ServerPart String
server =
  do query <- look "q"
     ok $ answerQuestion query

-- Later can do main = simpleHTTP nullconf $ server
main :: IO()
main = simpleHTTP nullConf $ ok "ohai"
