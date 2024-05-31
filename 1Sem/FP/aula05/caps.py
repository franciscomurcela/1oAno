def	shorten(str):
	abr=[]
	for a in str:
		if a.isupper() == True:
			abr.append(a)
	print (abr)
	
def main():
	str = input("string? ")
	shorten(str)

main()
