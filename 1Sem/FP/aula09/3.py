   if len(lst) % 2 != 0:
      middle=float(len(lst))/2
      return lst[int(middle - .5)]
   else:
      while len(lst)>2:
         for x in lst:
            for y in lst[::-1]:
               lst.remove(x)
               lst.remove(y)
      return ((lst[0]+lst[1])/2)