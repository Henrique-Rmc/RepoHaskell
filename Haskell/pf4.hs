--Faça um programa que recebe uma lista de inteiros 
--e um inteiro n (-1 < n < tamanho da lista), e retorna a lista 
--original eliminando os n maiores inteiros dela, sem alterar a ordem.

import Data.List


--recebe a lista
--ordena a lista
--retira os n maiores
--compara a nova lista com a antiga e monta uma lista com os valores que batem

listaOrdenada :: [Int] -> [Int] -> [Int]
listaOrdenada xs ys = [x | x <- xs , x `elem` ys]

main = do
    let n = 5
    let lista = [2, 5, 1, 3, 4, 6]
    let listaOrd = drop (n-1) (reverse (sort lista))

    print (listaOrdenada lista listaOrd)