import System.IO


calc :: [a] -> [a]
calc [x] = []
calc (x:xs) = (x : calc (xs))


main :: IO ()
main = do
    let lista = [1,2,3,4,5,6,7,8]
    let result = calc lista
    putStrLn ("Elemento: " ++ show result)
