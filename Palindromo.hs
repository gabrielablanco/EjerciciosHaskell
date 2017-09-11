palindromo::Int->String
palindromo a= if a==(retroceder a) then "El numero es palindromo"
              else "El numero No es palindromo"


dividir::Int->Int->Int
dividir 0 num2 = 0
dividir num1 0 = 0
dividir num1 num2 = if (num1<num2) then 0 
		    else contar num1 num2 1

contar::Int->Int->Int->Int
contar num1 num2 res = if (num1<num2) then res-1 
			else 
				if (num1-num2==0) then res 
				else contar (num1-num2) num2 res+1
              

div10::Int->Int
div10 num= if (num>=0) && (num<10) then 1 
		else 1+div10(dividir num 10);  

    
retroceder::Int->Int
retroceder num= intercambio num ((div10 num)-1)

intercambio::Int->Int->Int
intercambio num diven10=if(num>=0) && (num<10) then num 
                    else 10^diven10 * (mod num 10) + intercambio (dividir num 10) (diven10-1) 
