def isPalindrome(s):
	if s[::-1] == s:
		return True
	else:
		return False
		
 
def main():
	s = input("string? ")   
	print("Is the string a Palindrome? ", isPalindrome(s))

main()
