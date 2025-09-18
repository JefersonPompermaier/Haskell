

-- Usando casamento de padrão, defina uma função que, dada uma lista de números, retorna:
-- a. a soma dos dois primeiros elementos, se a lista tiver pelo menos dois elementos;
-- b. a cabeça da lista, se ela contiver apenas um elemento;
-- c. zero, caso contrário.


funcao :: [Int]  -> Int
funcao (x:y:_) = x+y
funcao [x] = x
funcao [] =0

main :: IO ()
main = do

    let minhaLista1 = [10, 20, 30, 40]

    let minhaLista2 = []

    let minhaLista3 = [10]

    let result1 = funcao minhaLista1 

    let result2 = funcao minhaLista2 

    let result3 = funcao minhaLista3

    putStrLn (show result1 ++ show result2 ++ show result3)