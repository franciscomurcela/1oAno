def allMatches(teams):
   assert len(teams) >= 2, "Requires two or more teams!"
   teams2 = teams
   jogo=[]
   for a in teams:
	   for b in teams:
		   if a != b:
			   jogos=(a,b)	
			   jogo.append(jogos)   
   print ("jogos => ", jogo)
    
    
def main():
   teams=[]
   while True:
      x = input("Equipas? ")
      if x == "":
         break
      teams.append(x)
   allMatches(teams)
main()
