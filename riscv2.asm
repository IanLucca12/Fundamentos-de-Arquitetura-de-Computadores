 .data
 num1:  #N�mero 1
 num2:  #N�mero 2
 resultado: #Resultado
 
 #Precisa ler o primeiro n�mero
 .text
 li a7 , 4    # Ir� imprimir a string vazia que corresponde ao n�mero 1
 la a0, num1  # Endere�o da string do n�mero 1 pro a0
 
 li a7, 5     # Ir� ler o valor da string como um inteiro e por default o valor desse n�mero ir� pro registrador a0
 ecall
 
 mv t0, a0  #vai mover o valor do inteiro do n�mero para o registrador t0
 
 #Precisa ler o segundo n�mero
 li a7 , 4   # Ir� imprimir a string vazia que corresponde ao n�mero 2
 la a0, num2  # Endere�o da string do n�mero 2 pro a0
 
 li a7, 5  # Ir� ler o valor da string como um inteiro e por default o valor desse n�mero ir� pro registrador a0
 ecall
 
 mv t1, a0  #vai mover o valor do inteiro do n�mero para o registrador t1
 
 #soma 
 add t2,t0,t1 # soma os valores nos registradores t0 e t1 e salva no t2
 
 li a7 , 4  # Ir� imprimir a string vazia que corresponde ao resultado
 la a0, resultado # Endere�o da string do resultado pro a0
 ecall
 
 li a7,1 # Ir� printar na tela o valor do inteiro do resultado
 mv a0,t2 # move o valor do resultado contido em t2 pro registrador a0
 ecall