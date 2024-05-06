def countLetters(file):
    dic = dict()
    for line in file:
        for word in line.split():
            line = line.strip()
            for letter in word:
                if letter in dic:
                    dic[letter] += 1
                else:
                    dic[letter] = 1
    return dic

with open('wordlist.txt', 'r') as file:
    lettersQuantDict = countLetters(file)

sortedKeys = sorted(lettersQuantDict, key=lambda t:lettersQuantDict[t], reverse=True)

newDict = dict(zip(sortedKeys, [lettersQuantDict[i] for i in sortedKeys]))

print(newDict)
print('\n')
print(lettersQuantDict)


