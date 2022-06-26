--Faça um programa que recebe uma lista de inteiros 
--e um inteiro n (-1 < n < tamanho da lista), e retorna a lista 
--original eliminando os n maiores inteiros dela, sem alterar a ordem.

limpa :: Int -> Int -> [Int] -> [Int]
limpa n l (x:xs) =  [x | x <- xs, x > n]

main = do
    let n = 5
    let lista = [1, 2, 3, 4, 5, 6]
    let l2 = reverse l2


    print (limpa n 0 lista)



        --let sL = sort lista
        print lista
        print (sort lista)
        print (reverse (sort lista))
        print (drop n (reverse (sort lista)))



        length' :: [Int] -> Int
length' xs = sum [1 | _  <- xs]