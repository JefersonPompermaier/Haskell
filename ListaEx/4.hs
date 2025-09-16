import System.IO


calcFatorial :: Integer -> Integer
calcFatorial n 
        |n <= 0 = 1
        | otherwise = n * calcFatorial(n-2) 

main :: IO ()
main = do
    putStrLn "Valor: "
    n <- readLn
    let result = calcFatorial n
    putStrLn ("Resultado Fatorial: " ++ show result)
