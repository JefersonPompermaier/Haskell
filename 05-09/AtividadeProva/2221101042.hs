

data Nat = Zero
        | Suc Nat
    deriving Show

nat1 :: Nat
nat1 = Suc Zero

nat2 :: Nat
nat2 = Suc nat1

nat3 :: Nat
nat3 = Suc nat2

nat4 :: Nat
nat4 = Suc nat3

-- conversao para inteiro
nat2integer :: Nat -> Integer
nat2integer Zero = 0
nat2integer (Suc n) = 1 + nat2integer n

-- Conversao para nat

integer2nat :: Integer -> Nat
integer2nat n | n <= 0 = Zero
integer2nat n = Suc (integer2nat (n-1))

-- Soma

natAdd :: Nat -> Nat -> Nat
natAdd Zero n = n
natAdd (Suc m) n = Suc (natAdd m n)

-- Subtracao


natSub :: Nat -> Nat -> Nat
natSub n Zero = n
natSub Zero _ = Zero
natSub (Suc m) (Suc n) = natSub m n

-- Multiplicacao
natMul :: Nat -> Nat -> Nat
natMul Zero _ = Zero
natMul (Suc m) n = natAdd n (natMul m n)
