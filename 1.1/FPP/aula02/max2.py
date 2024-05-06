# coding: utf-8
# This program finds the maximum of two numbers.
# It uses the built-in max function.
# Can you do it with a conditional statement (if / if-else) instead?

x1 = float(input("number? "))
x2 = float(input("number? "))

# Use a conditional statement instead of max function!
# mx = max(x1, x2)

mx = None

if x1 > x2:
	mx = x1
elif x2 > x1:
	mx = x2
else:
	print ("The numbers are the same.")
	exit()
print("Maximum:", mx)

