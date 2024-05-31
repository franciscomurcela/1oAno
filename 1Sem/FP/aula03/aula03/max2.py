def max2(x,y):
	if x>y:
		print("Máximo: ", x)
	else:
		print("Máximo: ", y)
		
		

def max3(x,y,z):
	max2(max2,z)
		
	 

def main():
	x = float(input("numero 1: "))
	y = float(input("numero 2: "))
	z = float(input("numero 3: "))
	max3(x,y,z)
	
	
main()
