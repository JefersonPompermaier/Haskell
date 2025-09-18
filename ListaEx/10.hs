data Produto =
    Perec Integer String Integer Bool 
    |NaoPerec Integer String String Integer
    deriving (Show, Eq)


funcao :: Produto -> String
funcao (Perec codigo desc anoVal comest) = "Produto Perecível: " ++ desc ++ ", código " ++ show codigo
funcao (NaoPerec codigo desc fabricante ano) = "Produto Não Perecível: " ++ desc ++ ", fabricante " ++ fabricante ++ show codigo


main :: IO ()
main = do

    let iogourte = Perec 101 "lacteo" 2026 True --  código, descrição, ano de validade e se é comestível ou não
    let arroz = NaoPerec 102 "Vegetal" "Sao Joao" 2025 --código, descrição, fabricante, ano

    let descIo = funcao iogourte
    let descAr = funcao arroz

    putStrLn descIo
    putStrLn descAr
