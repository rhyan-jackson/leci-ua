teams = []

inpTeams = None

while inpTeams != "":
    inpTeams = input("Insert the teams > ").upper()
    if inpTeams != "":
        teams.append(inpTeams)


teams_comb = []

for t1 in teams:
    for t2 in teams:
        if t1 != t2:
            teams_comb.append((t1, t2))


matches_goals_dict = {}
for match in teams_comb:
    print(f"Insert the goals for each team on the {match}.")
    goal_team_1 = int(input(f"Insert the goals quantity for {match[0]} > "))
    goal_team_2 = int(input(f"Insert the goals quantity for {match[1]} > "))

    matches_goals_dict[match] = (goal_team_1, goal_team_2)

table = {}
for teams, goals in matches_goals_dict.items():
    for team in teams:
        if team not in table:
            # vit emp der gols_marc gols_sofr
            table[team] = [0, 0, 0, 0, 0]
    if goals[0] > goals[1]:
        table[teams[0]][0] += 1
        table[teams[1]][2] += 1
    if goals[0] < goals[1]:
        table[teams[0]][2] += 1
        table[teams[1]][0] += 1
    if goals[0] == goals[1]:
        table[teams[0]][1] += 1
        table[teams[1]][1] += 1

    table[teams[0]][3] += goals[0]
    table[teams[1]][3] += goals[1]
    table[teams[0]][4] += goals[1]
    table[teams[1]][4] += goals[0]