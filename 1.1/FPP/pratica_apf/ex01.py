from time import sleep
import os

def clear():
    os.system('clear')

def menu():
    while True:
        clear()
        print(
            '''
    Empresa de telecomunicações
        1) Registar chamada
        2) Ler ficheiro
        3) Listar clientes
        4) Fatura
        \033[31m5) Terminar\033[m
            '''
        )
        try:
            op = int(input('Opção > '))
        except ValueError:
            print('\033[31mInsira um valor válido do menu.\033[m')
            sleep(2)
        else:
            if op in range(1, 6):
                break
            else:
                print('\033[31mInsira um valor válido do menu.\033[m')
                sleep(2)
    return op

def registerCall(filename='chamadas1.txt'):
    while True:
        origin = input('Insira o número de origem > ')
        if validatePhoneNumber(origin):
            break
        else:
            print('\033[31mInsira um número de telefone válido.\033[m')
    while True:
        destination = input('Insira o número de destino > ')
        if validatePhoneNumber(destination):
            break
        else:
            print('\033[31mInsira um número de telefone válido.\033[m')
    while True:
        duration = input('Insira a duração (s) > ')
        if duration.isnumeric():
            break
        else:
            print('\033[31mInsira uma duração válida.\033[m')
    
    with open(filename, 'a+') as file:
        file.write(f'{origin} {destination} {duration}\n')
    print('\033[32mInserido com sucesso.\033[m')

def validatePhoneNumber(str):
    count = 0
    for pos, digit in enumerate(str):
        if not digit.isnumeric():
            if pos != 0 or (pos == 0 and digit != "+" ):
                return False
        else:
            count += 1
    if count >= 3:
        return True
    else:
        return False
    
def readPhoneFile(filename='chamadas1.txt'):
    data = []
    with open(filename, 'r+') as file:
        for line in file:
            data.append(tuple(line.strip().split(' ')))
    return data

def listClients(data):
    clients = []
    for call in data:
        if call[0] not in clients:
            print(call[0])
            clients.append(call[0])
    return clients
        
def genInvoice(data):
    clients = listClients(data)
    while True:
        client = input('Insira o número do cliente (deve estar na lista) > ')
        if client in clients:
            break
    total_cost = 0
    print(f'Fatura do cliente > {client}')
    print(f"{'Destino':<16}{'Tipo':<20}{'Duração(m)':<12}{'Custo':<10}")
    for call in data:
        client_call, destiny_number_call, duration = call[0], call[1], call[2]
        perMinuteCost = 0
        counter = 0
        if client_call == client:
            if destiny_number_call[0] == destiny_number_call[1]:
                perMinuteCost = 0.04
                call_type = 'mesma rede'
            elif destiny_number_call[0] == '2':
                perMinuteCost = 0.02
                call_type = 'rede fixa'
            elif destiny_number_call[0] == '+':
                perMinuteCost = 0.8
                call_type = 'internacionais'
            else:
                perMinuteCost = 0.1
                call_type = 'outros destinos'
            counter += 1
            call_cost = perMinuteCost * int(call[2])/60
            total_cost +=  call_cost
            print(f"{destiny_number_call:<16}{call_type:<20}{duration:<12}{call_cost:0.2f}{'':<10}")
    print(f"{' ':<36}{'Total:':<12}{total_cost:0.2f}{'':<10}")

if __name__ == '__main__':
    already_readed = False
    while True:
        op_menu = menu()
        if op_menu == 1:
            registerCall()
            sleep(2)
        elif op_menu == 2:
            data = readPhoneFile()
            print('\033[32mFicheiro lido com sucesso.\033[m')
            already_readed = True
            sleep(2)
        elif op_menu == 3:
            if already_readed:
                listClients(data)
                input()
            else:
                print('\033[31mO ficheiro de chamadas ainda não foi lido pelo programa (faça opção 2).\033[m')
                sleep(2)
        elif op_menu == 4:
            if already_readed:
                genInvoice(data)
                input()
            else:
                print('\033[31mO ficheiro de chamadas ainda não foi lido pelo programa (faça opção 2).\033[m')
                sleep(2)
        elif op_menu == 5:
            exit()