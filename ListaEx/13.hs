
funcaoAnd :: Integer -> Integer ->  Bool
funcaoAnd 1 1 = True 
funcaoAnd _ _ = False

funcaoOr :: Integer -> Integer -> Bool
funcaoOr 1 _ = True
funcaoOr _ 1 = True
funcaoOr _ _ = False

main :: IO ()
main = do
    let a = 0
    let b = 0

    let result = funcaoAnd a b
    let result2 = funcaoOr a b 



    putStrLn ("AND: " ++ show result ++ " OR: " ++ show result2 )
