import System.IO

calcSal :: Double -> Double
calcSal x = (x * 1.1 - x * 0.07)


main :: IO ()
main = do
    putStrLn "Digite o salario: "
    salario <- readLn
    let novoSalario = calcSal salario
    putStrLn ("O novo salario e: " ++ show novoSalario)
