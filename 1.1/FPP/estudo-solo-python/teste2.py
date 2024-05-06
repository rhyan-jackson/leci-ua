def allMatches(teams):
   assert len(teams) >= 2, "Requires two or more teams!"
   lst = [] #lista vazia
   for x in teams: # iterar a primeira equipa
      for y in teams: # iterar a segunda equipa
         if x != y: # se a primeira for diferente da segunda
            lst.append((x,y)) #append do tuple na lista
   return lst #return da lista

print(allMatches(['A', 'B', 'C', 'D']))
