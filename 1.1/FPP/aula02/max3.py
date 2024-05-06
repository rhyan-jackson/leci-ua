# coding: utf-8
# This program finds the maximum of two numbers.
# It uses the built-in max function.
# Can you do it with a conditional statement (if / if-else) instead?

x1 = float(input("number? x1 > "))
x2 = float(input("number? x2 > "))
x3 = float(input("number? x3 > "))
x4 = float(input("number? x3 > "))

# Use a conditional statement instead of max function!
# mx = max(x1, x2)

maior = x1

if x2 > maior:
	maior = x2
	
if x3 > maior:
	maior = x3

if x4 > maior:
	maior = x4
	
print(maior)
