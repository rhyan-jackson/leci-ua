import sys

def fibonacci(n):
    output_list = []
    if n < 0:
        return output_list
    
    output_list = [0] + [1] * min(n, 1)
    
    while len(output_list) < n + 1:
        output_list.append(output_list[-2] + output_list[-1])
        
    return output_list

def main():
    if len(sys.argv) < 2:
        print('Correct usage: python3 <foo.py> <n>')
        exit()
    
    n = sys.argv[1]
    
    if not isinstance(n, int):
        print('<n> needs to be an integer.')
        exit()
    
    print(fibonacci(n))

if __name__ == '__main__':
    main()