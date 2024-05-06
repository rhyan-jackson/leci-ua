# Complete the code to make the HiLo game.

import random

def playHiLo():
    secret = random.randrange(1, 101)
    print("\033[36mI picked a number between 1 and 100. Can you guess it?\033[m")
    answer = False
    try_number = 0
    while answer != secret:
        try_number += 1
        answer = int(input('\033[35mInput > \033[m'))
        if answer < secret:
            print("It's higher!")
        elif answer > secret:
            print("It's lower!")
        print(f'Try: {try_number}')
    print(f'Congratulations! The answer is {answer}, you\'ve tried it {try_number} times!')

playHiLo()

