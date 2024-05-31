def allMatches(teams):
   assert len(teams) >= 4, "Requires 4 or more teams!"
   teams2 = teams
   jogos=[]
   for a in teams:
	   for b in teams:
         if a != b:
            jogo=(a,b)	
            jogos.append(jogo)   
   print ("jogos => ", jogos)
   resultado={}
   for t in jogos:
	   print(t)
	   golo=input("Golos da equipa1: ")
	   golo2=input("Golos da equipa2: ")
	   golos=(golo,golo2)
	   resultado.update({t:golos}) 
   print(resultado)
	
    
def main():
   teams=[]
   while True:
      x = input("Equipas? ")
      if x == "":
         break
      teams.append(x)
   allMatches(teams)
main()
