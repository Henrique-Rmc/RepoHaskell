--Defina uma função que gere a lista com quadrados dos elementos pares de 1 a 20

quadPar :: [Int]
quadPar = [x^2 | x<-[1..20] , even x]


--Ou
quadrPar :: [Int] -> [Int]
quadrPar [] = []
quadrPar (x:xs) = [x^2] ++ quadrPar xs



--Defina uma fubção que gera uma lista com todos os pontos naturia s de um plano cartesiano cujo eixo x
--assume valores no intervalo [a, b] e o eixo y entre [c, d]

pares :: Int -> Int -> Int -> Int -> [(Int,Int)]
pares a b c d = [(x,y) | x<-[a..b], y <- [c..d] ]


result :: Int -> Int -> IO()
result v c =
    if(v > c)
        then putStrLn ("+vogais")
    
    else
        putStrLn ("consoantes=vogais")


main = do

    result 10 8

