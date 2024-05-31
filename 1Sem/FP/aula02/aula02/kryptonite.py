		
# b) Try again.  It'll crash with a runtime error.  Find the cause and fix it.
# c) There is also a semantic error: for T=300 and P=100,
#    the phase should be SOLID.
#    Fix it to agree with the phase diagram.  Test in several conditions!
# d) Adjust the format string to output the temperature with 1 decimal place
#    and the pressure with 3. 

print("Kryptonite phase classifier")

T = float(input("Temperature (K)? "))
P = float(input("Pressure (kPa)? "))

# Determine the phase. (This is wrong! Fix to match the phase diagram.)
if P > 50.0 and T > 400.0 :
    phase = "LIQUID"
elif P > 0.0 and T < 400.0 and P/T > 0.125 : 
		phase = "Solid"
else:
    phase = "GAS"

print("At T=({:.1f}) K and =({:.3f}) kPa, Kryptonite is in the {} phase.".format(T, P, phase))
