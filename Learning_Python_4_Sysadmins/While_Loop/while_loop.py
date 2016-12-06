#counter = 0
#while counter < 5:
#	print("Hello " + str(counter))
#	counter = counter + 1

#counter = 0
#while True:
#	print("Hello " + str(counter))
#	counter = counter + 1
#	if counter >= 5:
#		break
print("Hello human!")
while True:
	user_input = input("> ")
	if user_input == "quit":
		print("Goodbye")
		break
	else:
		print(user_input)
