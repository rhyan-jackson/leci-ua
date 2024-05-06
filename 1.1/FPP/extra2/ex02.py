import os
import math

def makeBet(filename):
    with open(filename, 'r+') as file:
        matches = []
        for line in file:
            match = tuple(line.strip().split(','))
            matches.append(match)
    while True:
        journey_chosen = input('Insira a jornada desejada > ').strip()
        if journey_chosen in {x[0] for x in matches}:
            break
        else:
            print('Insira uma jornada válida.')
    bets = []
    for pos, match in enumerate([x for x in matches if x[0] == journey_chosen]):
        while True:
            match_bet = input(f'{pos + 1} > Aposta para {match[1]} vs {match[2]} > ').strip()
            if match_bet in ('1', '2', 'X'):
                break
            else:
                print('Insira uma aposta válida. 1(casa), 2(vis.) ou X(emp.)')
        bets.append([pos + 1, match_bet])
    
    bet_filename = f'jornada{journey_chosen}.csv'
    if os.path.exists(bet_filename):
        os.remove(bet_filename)
    
    with open(bet_filename, 'a+') as file:
        for x in bets:
            file.write(f'{x[0]},{x[1]}\n')
            
    return bet_filename

def checkBet(journey_filename, games_filename, bet_filename):
    journey = bet_filename.strip().split('.')[0][-1]
    with open(journey_filename, 'r+') as journey_file:
        sel_matches_list = [x.strip().split(',')[1:] for x in journey_file if x[0] == journey]
        
    journey_result_matches = []    
    with open(games_filename, 'r+') as games_file:
        games_res = [line.strip().split(',') for line in games_file]
        
    for match in sel_matches_list:
        for match_res in games_res:
            if len(match_res) > 3:
                if (match[0], match[1]) == (match_res[1], match_res[2]):
                    journey_result_matches.append(match_res)
                    break
    
    with open(bet_filename, 'r+') as file:
        bets = [line.strip()[-1] for line in file]
    
    for pos, data in enumerate(journey_result_matches):
        if int(data[3]) > int(data[4]):
            result = '1'
        elif int(data[3]) < int(data[4]):
            result = '2'
        elif int(data[3]) == int(data[4]):
            result = 'X'
        if result == bets[pos]:
            bet_result = 'CERTO'
        else:
            bet_result = 'ERRADO'
        print(f'{pos+1:<10}{data[1]:>20}{data[3]:>4}-{data[4]:<4}{data[2]:<20}:  {result:<4}({bet_result},{bets[pos]})')
if __name__ == '__main__':
    bet_filename = makeBet('Jornadas.csv')
    checkBet('Jornadas.csv', 'Jogos.csv', bet_filename)
    
    