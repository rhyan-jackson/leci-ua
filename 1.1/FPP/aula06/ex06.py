def compareFiles(arch1, arch2):
    with open(arch1, 'rb') as o_arch1, open(arch2, 'rb') as o_arch2:
        m = 0
        while True:
            text1 = o_arch1.read(1024)
            text2 = o_arch2.read(1024)
            if text1 == b'' and text2 == b'':
                print('Finished')
                print('They\'re equal')
                break
            if text1 == text2:
                m += 1
                print(f'The {m}° KiB are equal.')
            else:
                print('Different')
                break
        
        
compareFiles('pg3333.txt', 'pg3333.txt')