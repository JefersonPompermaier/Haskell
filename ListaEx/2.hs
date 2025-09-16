import System.IO


calculo :: Double -> Double -> Double -> Double
calculo tl as ef = ( tl*0.2+as*0.3+ef*0.5)

main :: IO ()
main = do
    putStrLn "Digite as notas TL, AS e EF: "
    tl <- readLn
    as <- readLn
    ef <- readLn
    let nf = calculo tl as ef
    putStrLn ("A nota final é de: " ++ show nf)
    putStrLn("Conceito: " ++ conceito nf)


conceito :: Double -> String
conceito nf 
    | nf >= 8 && nf <= 10 = "A"
    | nf >=7 && nf < 8 = "B"
    | nf >=6 && nf < 7 = "C"
    | nf >=5 && nf < 6 = "D"
    | nf >=0 && nf < 5 = "E"
    | otherwise = "Erro"

