"""
This program generates 20 terms of a sequence by a recurrence relation.
Change it to show all positive terms of the sequence and count them.
Format the columns to make the output look like this:
   n        Un
   0   100.000
   1    99.990
   2    99.980
"""

print("n", "Un")
quant = 0
Un = 100                # Un = each term of the sequence. Initially = U0
while Un >= 0:
    quant += 1
    print(Un)
    Un = 1.01*Un - 1.01     # Set Un to the next term of the sequence

print(quant)