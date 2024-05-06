import sys

if len(sys.argv) > 1:
    file_name = sys.argv[1]
else:
    file_name = "pg3333.txt"
with open(file_name, "r") as text_file:
    dic = dict()

    for line in text_file:
        line = line.lower()
        for character in line:
            if character.isalpha():
                if character not in dic.keys():
                    dic[character] = 1
                else:
                    dic[character] += 1

print(dic['a'])