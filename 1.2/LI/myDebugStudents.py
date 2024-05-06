import math
import sys

'''
  * 2 
 *** 1
***** 0

   * 3
  *** 2
 ***** 1
******* 0

'''

def square():
    size = int(input('square size: '))
    for i in range(size):
        print( '*' * size )
def triangle_right():
    height = int(input('triangle height: '))
    for i in range(height):
        segment = '*' * (i+1)
        print(segment)
    for i in range(height):
        segment = '*' * ((height-1) - i)
        print(segment)
def triangle_left():
    height = int(input('triangle height: '))
    
    
def triangle_upward():
    height = int(input('triangle height: '))
    spaces = height - 1
    
    for i in range(1, height*2 + 1, 2):
        spaces_char = spaces * ' '
        print(spaces_char + '*' * i)
        spaces -= 1
        
        

def triangle_downward():   
    height = int(input('triangle height: '))
    spaces = 0
    for i in range(height*2 + 1, 1, 2):
        spaces_char = spaces * ' '
        print(spaces_char + '*' * i)
        spaces += 1

def cosine():
    # Taylor's series: https://pt.wikipedia.org/wiki/S%C3%A9rie_de_Taylor
    value = 0

def stepOver():
    # in the menu you can also use Step Over for this method
    fileName = sys.argv[0]
    file = open(fileName, "r")
    for line in file:
        list = line[:50].split()
    print("STEP OVER!!!!!!!")

# if __name__ == "__main__":
#     while(True):
#         case = input("0 - square\n"
#                      "1 - right\n"
#                      "2 - left\n"
#                      "3 - upward\n"
#                      "4 - downward\n"
#                      "5 - object\n"
#                      "6 - setOver\n"
#                      "case: ")
#         match(case.lower()):
#             case '0':
#                 square()
#             case '1':
#                 triangle_right()
#             case '2':
#                 triangle_left()
#             case '3':
#                 triangle_upward()
#             case '4':
#                 triangle_downward()
#             case '5':
#                 cosine()
#             case '6':
#                 stepOver()
#             case default:
#                 exit()

if __name__ == "__main__":
    triangle_downward()
