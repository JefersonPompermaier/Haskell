import Data.Char (toLower)
import System.IO


precoRetrato :: Integer -> String -> Double
precoRetrato numInd dia =
    let
        precoBase
            | numInd == 1 = 100
            | numInd== 2 = 130
            | numInd== 3 =  150
            | numInd== 4 = 165
            | numInd== 5 = 175
            | numInd== 6 = 180
            | otherwise = 185
        
        fds = (dia == "sabado") ||(dia == "domingo")
    in 
        if fds
        then precoBase * 1.2
        else precoBase



main :: IO ()
main = do
    putStrLn "Digite a quantidade de pessoas: "
    numInd <- readLn
    putStrLn "Digite o dia da semana: "
    dia <- getLine
    let diaMin = map toLower dia
    let precoFinal = precoRetrato numInd diaMin
    putStrLn ("O custo final é de: " ++ show precoFinal)
