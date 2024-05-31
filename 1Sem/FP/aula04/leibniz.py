def leibnizPi4(n):
	total=(((-1)**n)/(2*n+1))
	total=(total*4)	
	print(total)
	
def main():
	n = float(input("nr de termos: "))
	leibnizPi4(n)
	
main()
	
