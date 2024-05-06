# Complete o programa!

# a)
def loadFile(fname, lst):
    with open(fname, 'r+') as file:
        file.readline()
        for line in file:
            part = line.split('\t')
            student_info = (int(part[0]), part[1], float(part[5]), float(part[6]), float(part[7].replace('\n', '')))
            lst.append(student_info)
    return lst

# b) Crie a função notaFinal aqui...
def finalGrade(student_tuple):
    grade1, grade2, grade3 = student_tuple[2], student_tuple[3], student_tuple[4]
    return (grade1 + grade2 + grade3)/3
    

# c) Crie a função printPauta aqui...
def printSchedule(students_list):
    print(f'{"Numero":<20} {"Nome":^50} {"Nota":^20}')
    for infos in students_list:
        print(' {:<20} {:^50} {:^20.2f}'.format(infos[0], infos[1], finalGrade(infos)))

# d)
def main():
    lst = []
    # ler os ficheiros
    
    printSchedule(loadFile("school1.csv", lst))
    loadFile("school2.csv", lst)
    loadFile("school3.csv", lst)
    
    # ordenar a lista
    ...
    
    # mostrar a pauta
    ...


# Call main function
if __name__ == "__main__":
    main()


