import System.IO


calc :: Double -> Integer -> Double -> Double
calc sal anos perc
    |anos == 0 = sal
    |otherwise = calc (sal*(1+perc)) (anos-1) (perc*2) 


main :: IO ()
main = do
    putStrLn "Salario, ano inicial, ano final: "
    a <- readLn
    b <- readLn
    c <- readLn
    let perc = 0.015
    let anos = c-b
    let result = calc a anos perc
    putStrLn ("O salario final e de: " ++ show result)
