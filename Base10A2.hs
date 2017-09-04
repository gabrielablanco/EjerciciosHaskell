base::Int->Int
base x = if x = 0 then 0
		else `mod` x 2 + 10 * base (x/2) 