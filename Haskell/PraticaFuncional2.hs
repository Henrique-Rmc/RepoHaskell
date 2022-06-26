--Ana gosta muito de ir pra academia e fazer seus exercícios
--físicos ouvindo música. Porém, a bateria do seu aparelho
--de música só consegue reproduzir 0,6h de música
-- Considerando a limitação do aparelho, faça um programa 
--que lê da entrada a quantidade de músicas que Ana gostaria
--de colocar no aparelho e, para cada música, leia da entrada
--sua duração em segundos. Como saída, o programa deve retornar 
--a quantidade de músicas (na ordem estipulada por Ana) que cabem 
--no aparelho.


somaMusicas :: Int -> Int -> Int -> IO()

somaMusicas 0 soma tempoTotal = print soma

somaMusicas qtdMusicas soma tempoTotal = do
    input1 <- getLine
    let segundosMusica = read input1 :: Int
    
    if(tempoTotal - segundosMusica) >= 0
        then somaMusicas (qtdMusicas -1) (soma + 1) (tempoTotal - segundosMusica)
        
    else somaMusicas (0) soma (tempoTotal - segundosMusica)
    

main = do
    
    inputx <- getLine
    let musicas = read inputx :: Int
        
    somaMusicas musicas 0 2160