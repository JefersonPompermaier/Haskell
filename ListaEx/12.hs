-- Definições dos tipos de dados (as mesmas de antes)
data Produto =
    Perec Integer String Integer Bool Comercializacao
    |NaoPerec Integer String String Integer Comercializacao 
    deriving (Show, Eq)

data Comercializacao =
    Unidade String
    | Peso String 
    deriving (Show, Eq)

-- A nova função
verificaValidade :: Produto -> Integer -> Bool
verificaValidade (Perec _ _ anoVal _ _) anoAtual = anoVal > anoAtual
verificaValidade (NaoPerec _ _ _ _ _) _          = True

-- Ponto de entrada do programa para testar
main :: IO ()
main = do
    -- Definimos nossos produtos de teste
    let iogurte = Perec 101 "Iogurte" 2026 True (Unidade "Pote 200g")
    let queijo = Perec 102 "Queijo" 2024 True (Peso "1 KG")
    let arroz = NaoPerec 103 "Arroz" "Tio João" 2020 (Peso "5 KG")

    -- Teste 1: Verificando no ano de 2025
    putStrLn "--- Verificando em 2025 ---"
    putStrLn ("Iogurte (vence 2026) é válido? " ++ show (verificaValidade iogurte 2025))
    putStrLn ("Queijo (venceu 2024) é válido? " ++ show (verificaValidade queijo 2025))
    putStrLn ("Arroz (não perecível) é válido? " ++ show (verificaValidade arroz 2025))

    -- Teste 2: Verificando no ano de 2027 (quando o iogurte já terá vencido)
    putStrLn "\n--- Verificando em 2027 ---"
    putStrLn ("Iogurte (vence 2026) é válido? " ++ show (verificaValidade iogurte 2027))