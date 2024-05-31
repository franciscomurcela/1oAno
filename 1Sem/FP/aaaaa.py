def replaceCharactersWithUnderscores(s, t):
   l=list(s)
   l2=list(t)
   for x in l:
      l[x]=2
      return s,t
def main():
   s=input()
   t=input()
   replaceCharactersWithUnderscores(s,t)

main()

