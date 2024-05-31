def first_name_making():
	dicionario = dict()
	f = open("names.txt", "r")
	for x in f:
		nome_completo = x.split()
		w = nome_completo[-1]
		if w in dicionario:
			dicionario[x].add(nome_completo[0])
		else:
			dicionario[x] = {nome_completo[0]}
	f.close()	
	return(dicionario)

print(first_name_making())