import sys
assert len(sys.argv)==2, "Necessário o nome do ficheiro"
abc={}
c=0

with open(sys.argv[1], encoding="utf-8") as f:
	for line in f:
		for w in list(line):
			if w.isalpha():
				w = w.lower()
				if w not in abc:
					abc[w] = 1
				else:
					abc[w] += 1


L=sorted(abc.keys(), key = lambda letra: abc[letra])
for letra in L:
	print(letra,abc[letra])