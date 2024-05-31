
n=int(input("n?"))
nr=[]

def primesUpTo(n):
    while n>0:
        nr.append(n)
        n=n-1
        for x in nr:
            if x%2==0:
                nr.pop(x)
    print(nr)       

def main():
    s = primesUpTo(n)
    print(s)

    # Do some checks:
    #assert primesUpTo(30) == {2,3,5,7,11,13,17,19,23,29}
    #assert len(primesUpTo(1000)) == 168
    #assert len(primesUpTo(7918)) == 999
    #assert len(primesUpTo(7919)) == 1000
    #print("All tests passed!")

if __name__ == "__main__":
    main()




