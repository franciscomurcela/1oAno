import random

def main():
		secret = random.randrange(1, 101);
		print("Can you guess my secret?")
		n=0
		c=1
		while n!=secret:
			n = int(input("Number: "))
			c+=1
			if (n > secret):
				print("\n High ")
			elif (n < secret):
				print("\n Low ")
			else:
				print("\n CORRECT! ")
				
		print("\n Tries: ", c )
			
				
    


main()
