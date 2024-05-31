CTP = float(input("CTP: "))
CP = float(input("CP: "))
nf = int((CTP*0.64+CP*0.36))
if CTP <6.5 or CP<6.5:
	nf=("RNM")
else:
	nf<10
	ATPR = float(input("ATP: "))
	APR = float(input("APR: "))
	nf=(0.36*ATPR+0.64*APR)
	
	
print ("Nota Final : ", nf)

