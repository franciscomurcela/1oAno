# coding: utf-8
# This program finds the maximum of two numbers.
# It uses the built-in max function.
# Can you do it with a conditional statement (if / if-else) instead?

x1 = float(input("number 1? "))
x2 = float(input("number 2? "))
x3 = float(input("number 3? "))
# Use a conditional statement instead of max function!

mx=x1

if x2 > mx :
	mx=x2
	
if x3 > mx :
	mx=x3

print("Maximum: ", mx)
