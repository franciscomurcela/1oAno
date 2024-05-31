
def factorial(n):
   assert isinstance(n, int), "n should be an int"
   assert n >= 0            , "n should not be negative"
   y=1
   for x in range (n,0,-1):
	   y*=x
   print (y)
   
     
def main():
	n = int(input("Fatorial de : " ))
	factorial(n)
	
main()	
