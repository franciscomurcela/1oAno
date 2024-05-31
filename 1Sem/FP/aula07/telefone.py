
def listContacts(dic):
    """Print the contents of the dictionary as a table, one item per row."""
    print("{:>12s} : {}".format("Numero", "Nome"))
    for num in dic:
        print("{:>12s} : {}".format(num, dic[num]))

def filterPartName(contacts, partName):
    """Returns a new dict with the contacts whose names contain partName."""
    ...


def menu():
    """Shows the menu and gets user option."""
    print()
    print("(L)istar contactos")
    print("(A)dicionar contacto")
    print("(R)emover contacto")
    print("Procurar (N)úmero")	
    print("Procurar (P)arte do nome")
    print("(T)erminar")
    op = input("opção? ").upper()   # converts to uppercase...
    return op


def main():
	contactos = {"234370200": "Universidade de Aveiro",
        "727392822": "Cristiano Aveiro",
        "387719992": "Maria Matos",
        "887555987": "Marta Maia",
        "876111333": "Carlos Martins",
        "433162999": "Ana Bacalhau"
        }
	op = ""
	while op != "T":
		op = menu()
		if op == "T":
			print("Fim")
		elif op == "L":
			print("Contactos:")
			listContacts(contactos)  
		elif op == "A": 
			nm = input("Nome: ")
			nr = input("Número: ")
			if nm not in contactos:
				if nr not in contactos:
					contactos[nr]=(nm)
		elif op == "R":
			input("Número que pretende eliminar: ")								
		else:
			print("Não implementado!")
    


main()

