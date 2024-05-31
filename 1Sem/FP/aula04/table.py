# Show a table of the squares of the first four numbers
print("{:2s} {:2s} {:2s} ".format("n", "n²", "2^n"))
for n in range (20,0,-1) :
    print("{:2d} {:2d} {:2d}".format(n, n**2, 2**n))

