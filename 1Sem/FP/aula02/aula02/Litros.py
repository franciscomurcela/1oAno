n = float(input("Número de litros para abastecer: "))
L=1.40
Preço = (n*L)

if n>40 :
	Preço = (n*L)-(n*L*0.1)
	
print("Preço:", Preço,"€")
