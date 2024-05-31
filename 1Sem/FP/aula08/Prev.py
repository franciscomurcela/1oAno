L1 = [1, 3, 5, 7, 9]
[10+x for x in L1]
L2 = [2, 4, 6]
[x+y for x in L1 for y in L2]
{x+y for x in L1 for y in L2}
[(x,y) for x in L1 for y in L2]
[(x,y) for y in L2 for x in L1]
[x*c for c in "abc" for x in L1]
print (L1)
print (L2)