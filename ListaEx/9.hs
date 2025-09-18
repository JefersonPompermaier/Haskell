import System.IO


calc :: [Integer] -> [Integer] -> [Integer]
calc [] _ = []
calc _ [] = []
calc (x:xs) (y:ys) = (x * y: calc xs ys)


main :: IO ()
main = do
    let lista = [1,2,3,4,5,6,7,8]
    let listab = [1,2,3,4,5,6,7,8]
    let result = calc lista listab
    putStrLn ("Elemento: " ++ show result)
