# Example: counting words in a text file

# Start with an empty dict:
dc = {}

c = 0
with open("pg3333.txt", encoding="utf-8") as f:
    for line in f:
        for w in w.split():
            w = w.lower()
            if w in dc:
                dc[w] += 1
            else:
                dc[w] = 1

print(dc["armas"])
print(dc["amor"])

for pal, cont in dc.items():
    print(pal, cont)

