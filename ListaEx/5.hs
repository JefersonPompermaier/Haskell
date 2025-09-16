import System.IO


calcPotencia :: Integer -> Integer -> (String, Integer)
calcPotencia a b
        |b == 0 = ("1", 1)
        |b == 1 = (show a, a)
        | otherwise =
                let 
                        (stringParc, resultadoParc) = calcPotencia (a) (b-1) 
                in
                        (show a ++ "X" ++ stringParc, a * resultadoParc)
        

main :: IO ()
main = do
    putStrLn "Valor a (numero) e b (potencia): "
    a <- readLn
    b <- readLn
    let ( string, result) = calcPotencia a b
    putStrLn ("O final e de: " ++ show result)
    putStrLn ("conta: " ++ string)
