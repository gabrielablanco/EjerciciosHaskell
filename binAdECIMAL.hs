binaDeci:: (Integer,Integer)- >Integer
binaDeci(x,c) = if(x< 10) then (x * (potencia(2,c))) 
	else ((x `mod` 10) * (potencia(2,c))) + (binaDeci(x/10,c+1))
