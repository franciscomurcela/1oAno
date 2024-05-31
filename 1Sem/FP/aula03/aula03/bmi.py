# given the height (in meter) and weight (in kg) of a person.
def bodyMassIndex(height, weight):
    bmi = (weight/(height*height))
    return bmi


# This function returns the BMI category acording to this table:
# BMI:        <18.5         [18.5, 25[      [25, 30[      30 or greater 
# Category:   Underweight   Normal weight   Overweight    Obesity 
def bmiCategory(bmi):
		assert bmi>0
		if 18.5<=bmi<25:
			bmiCategory = ("Normal weight")
		elif 25<=bmi<30:
			bmiCategory = ("Overweight")
		elif bmi>=30:
			bmiCategory = ("Obesity")
		else:
			bmiCategory = ("Underweight")
		return(bmiCategory)



# This is the main function
def main():
    print("Índice de Massa Corporal")
    
    height = float(input("Altura (m)? "))
    if height < 0:
        print("ERRO: altura inválida!")
        exit(1)

    weight = float(input("Peso (kg)? "))
    if weight < 0:
        print("ERRO: peso inválido!")
        exit(1)

    imc = bodyMassIndex(height,weight)
    cat = bmiCategory(imc)

    print("BMI:", imc, "kg/m2")
    print("BMI category:", cat)


# Program starts executing here
main()

