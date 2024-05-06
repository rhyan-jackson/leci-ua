import bisect

def extractList(file_name='wordlist.txt'):
    with open(file_name, 'r') as word_file:
        return word_file.read().splitlines()

lista = extractList()

ea = bisect.bisect_left(lista, 'ea')
eb = bisect.bisect_left(lista, 'eb')