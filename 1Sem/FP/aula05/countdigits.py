def	countDigits(str):
	digitos=[]
	for a in str:
		if a.isdigit() == True:
			digitos.append(a)
	print (len(digitos))
	
def main():
	str = input("string? ")
	countDigits(str)

main()
