-- Prática 03 de Haskell
-- Nome: Juliano de Mello Pasa

-- Exercicio 1
-- Adiciona 10

add10toall :: [Int] -> [Int]
add10toall lista = [x+10 | x <- lista]

-- Exercicio 2
-- Multiplica por N

multN :: Int -> [Int] -> [Int]
multN n lista = [x*n | x <- lista]

-- Exercicio 3
-- Multiplica usando map 

multN' :: Int -> [Int] -> [Int]
multN' n lista = map (\x -> x*n) lista

-- Exercicio 4
-- Aplica expressao

applyExpr :: [Int] -> [Int]
applyExpr lista = [3*x+2 | x <- lista]

-- Exercicio 5
-- Aplica expressao com lambda

applyExpr' :: [Int] -> [Int]
applyExpr' lista = map (\x -> 3*x+2) lista

-- Exercicio 6
-- Adiciona sufixo

addSuffix :: String -> [String] -> [String]
addSuffix suf lista = [x ++ suf | x <- lista]

-- Exercicio 7
-- Maiores que 5

selectgt5 :: [Int] -> [Int]
selectgt5 lista = [x | x <- lista, x > 5]

-- Exercicio 8
-- Soma de impares

sumOdds :: [Int] -> Int
sumOdds lista = sum[x | x <- lista, odd x]

-- Exercicio 9
-- Soma de impares sem list comprehension

sumOdds' :: [Int] -> Int
sumOdds' lista = sum(filter odd lista)

-- Exercicio 10
-- Seleciona expressao

selectExpr :: [Int] -> [Int]
selectExpr lista = [x | x <- lista, even x && x >= 20 && x <= 50]

-- Exercicio 11
-- Conta os baixinhos

countShorts :: [String] -> Int
countShorts lista = length [x | x <- lista, length x < 5]

-- Exercicio 12
-- Calcula expressao

calcExpr :: [Float] -> [Float]
calcExpr lista = [x^2/2 | x <- lista, x^2/2 > 10]

-- Exercicio 13
-- Conversao de espaco

trSpaces :: String -> String
trSpaces lista = [if x == ' ' then '-' else x | x <- lista]

-- Exercicio 14
-- Seleciona segundo elemento

selectSnd :: [(Int,Int)] -> [Int]
selectSnd lista = [x | (_,x) <- lista]

-- Exercicio 15
-- Dot product

dotProd :: [Int] -> [Int] -> Int
dotProd x y = sum [a*b | (a, b) <- zip x y]