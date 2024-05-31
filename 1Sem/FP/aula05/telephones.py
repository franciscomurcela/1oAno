

def telToName(tel, telList, nameList):
	for a in telList:
		
		if tel in telList:
			name=.index(tel)
		else:
			name=tel		
	return name


def nameToTels(partName, telList, nameList):
    for a in nameList:
		
		if (name in nameList):
			tel=telList.index(tel)
		else:
			tel=name
    return tel

def main():
    telList = ['975318642', '234000111', '777888333', '911911911']
    nameList = ['Angelina', 'Brad',      'Claudia',   'Bruna']
    
    
    tel = input("Tel number? ")
    print( telToName(tel, telList, nameList) )
    print( telToName('234000111', telList, nameList) == "Brad" )
    print( telToName('222333444', telList, nameList) == "222333444" )

    
    name = input("Name? ")
    print( nameToTels(name, telList, nameList) )
    print( nameToTels('Clau', telList, nameList) == ['777888333'] )
    print( nameToTels('Br', telList, nameList) == ['234000111', '911911911'] )


if __name__ == "__main__":
    main()
