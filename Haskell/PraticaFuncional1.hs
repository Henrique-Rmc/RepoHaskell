--Escreva um programa que retorna o valor (R$)
--gasto por um aparelho eletrônico dada a sua 
--potencia (Watts), tempo de uso diário (Horas) 
--e o custo por kWh. Sabendo que:

--Consumo = (potência em watt/1000) x (tempo de uso diario) = total em KWh

--Gasto = Consumo * custo por kWh

import Text.Printf


consumo :: Float -> Float -> Float
consumo a b = (a / 1000) * b

gastoDiario :: Float -> Float -> Float
gastoDiario a b = a * b

main = do
    input1 <- getLine
    input2 <- getLine
    input3 <- getLine

    let
        num1 = read input1 :: Float
        num2 = read input2 :: Float
        num3 = read input3 :: Float
       
        consumoFinal = consumo num1 num2

        gastoDiario = consumoFinal * num3

        gastoSemanal = gastoDiario * 7

    printf "consumo = %.2fkwh\n" consumoFinal
    printf "consumo = %.2fkwh\n" gastoDiario
    printf "Gasto semanal = R$%.2f\n" gastoSemanal
  

