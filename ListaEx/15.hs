
-- Utilize uma função de alta ordem para realizar a contagem de elementos de uma lista.


contar :: [a] -> Int
contar = foldr (\_ n -> n +1) 0

main :: IO ()
main = do

    let minhaLista1 = [10, 20, 30, 40]
    print (contar minhaLista1) 
