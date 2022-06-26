--Escreva um programa que dada uma string na entrada deve retornar
--na saida se a string possui mais vogais, consoantes ou a mesma quantidade de ambas.

isVowel :: Char -> Bool
isVowel c = c == 'a' || c == 'e' || c == 'i' ||c == 'o' ||c == 'u' || c == 'A'

result :: Int -> Int -> IO()
result v c = 
    if(v > c) then print "+vogais"
    else if(v < c) then print "+consoantes"
    else print "consoantes=vogais"
    
contacv :: [Char] -> Int -> Int -> IO()
contacv [] v c = result v c

contacv (x:xs) v c = 
    if(isVowel x) then contacv xs (v+1) c 
    else contacv xs v (c+1)
    
main = do

    input1 <- getLine
    let word = input1 :: String
    
    contacv word 0 0



