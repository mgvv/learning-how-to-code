capitals_dict = {
'Sinaloa' : 'Culiacan',
'Jalisco' : 'Guadalajara',
'Veracruz' : 'Veracruz',
'Sonora' : 'Obregon',
'Nuevo Leon' : 'Monterrey',
'Chiapas' : 'Tuxtla Gutierrez',
'Guerrero' : 'Chilpancingo',
'Quintana Roo' : 'Chetumal',
'Tabasco' : 'Villa hermosa',
'Tamaulipas' : 'Ciudad Victoria',
'San Luis Potosi' : 'San Luis Potosi',
'Nayarit' : 'Tepic',
'Chihuahua' : 'Chihuahua',
'Baja California' : 'Tijuana',
'Hidalgo' : 'Pachuca',
}

import random

states = list(capitals_dict.keys())
for i in [1, 2, 3, 4, 5]:
	state = random.choice(states)
	capital = capitals_dict[state]
	capital_guess = input("What's the capital of " + state + "? ")

	if capital_guess == capital:
		print("Correct! nice job.")
	else:
		print("Incorrect. The capital of " + state + " is " + capital + ".")

print("All done")
