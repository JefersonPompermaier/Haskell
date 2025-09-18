data Produto =
    Perec Integer String Integer Bool Comercializacao
    |NaoPerec Integer String String Integer Comercializacao 
    deriving (Show, Eq)

data Comercializacao =
    Unidade String
    | Peso String 
    deriving (Show, Eq)


descrComer :: Comercializacao -> String
descrComer (Unidade s) = "Unidade: " ++ s 
descrComer (Peso s) = "Peso: " ++ s

funcao :: Produto -> String
funcao (Perec codigo desc anoVal comest forma) = "Produto Perecível: " ++ desc ++ ", código " ++ show codigo ++ descrComer forma
funcao (NaoPerec codigo desc fabricante ano forma) = "Produto Não Perecível: " ++ desc ++ ", fabricante " ++ fabricante ++ show codigo ++ descrComer forma


main :: IO ()
main = do

    let iogourte = Perec 101 "lacteo" 2026 True (Unidade "Pote 20g ")--  código, descrição, ano de validade e se é comestível ou não
    let arroz = NaoPerec 102 "Vegetal" "Sao Joao" 2025 (Peso "5 KKG") --código, descrição, fabricante, ano

    let descIo = funcao iogourte
    let descAr = funcao arroz

    putStrLn descIo
    putStrLn descAr
