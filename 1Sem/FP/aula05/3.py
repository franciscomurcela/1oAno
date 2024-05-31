lst=[]
def inputFloatList():
	while True:
		f=input("nr? ")
		if(f == ""):
			break 
		lst.append(f)
	
		
def countLower(lst,v):
	lower = []
	for f in lst:
		if f < v:
			lower.append(f)
	print ("valores inferiores a ",v , lower)
				
def minmax(lst):
	mini=[]
	maxi=[]
	mm=[]
	for f in lst:
		mini.append(f)
		if mini[0] > f:
			mini.pop(0)
	for f in lst:
		maxi.append(f)
		if maxi[0] < f:
			maxi.pop(0)
	mm.append(mini[0])
	mm.append(maxi[0])
	print ("mínimo e máximo", mm)


		 
def medio(lst):
	minmax(lst)
	med=(mm[0]*mm[1])/2
	countLower(lst,med)
		
	
	
			
def main():
	inputFloatList()
	print(lst)
	v = input("v? ")
	countLower(lst,v)
	minmax(lst)
	medio(lst)
	
		
main()


