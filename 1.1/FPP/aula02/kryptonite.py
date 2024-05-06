# This program should find the phase of a fictional substance
# for given temperature and pressure conditions, but it has several bugs.
# 
# a) Try to run the program with Python3 and see what happens.
#    There's a syntax error near the end.  Fix it.
# b) Try again.  It'll crash with a runtime error.  Find the cause and fix it.
# c) There is also a semantic error: for T=300 and P=100,
#    the phase must be SOLID.
#    Fix it to agree with the phase diagram.  Test in several conditions.
# d) Adjust the format string to output the temperature with 1 decimal place
#    and the pressure with 3. 


# Reta: m = 50/400
# passa em (0,0) y = mx + b: y = 1/8x
print("Kryptonite phase classifier")

# Input
T = float(input("Temperature (K)? "))
P = float(input("Pressure (kPa)? "))
phase = None
intran = False
# Determine the phase.
if T > 400 and P > 50:
    phase = "Liquid"
elif T < 400 and P > 50:
    phase = "Solid"
elif T > 400 and P < 50:
    phase = "Gas"
elif T < 400 and P < 50:
    if P < 1/8 * T:
        phase = "Gas"
    elif P > 1/8 * T:
        phase = "Solid"
    else:
        intran = True
else:
    intran = True

# Output.
if intran:
    print("At {} K and {} kPa, Kryptonite is in transition.".format(T, P))
else:
    print("At {} K and {} kPa, Kryptonite is in the {} phase.".format(T, P, phase))
