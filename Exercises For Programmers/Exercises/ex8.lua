io.write "How many people? "
peopleAmount = io.read()
io.write "How many pizzas do you have? "
pizzasAmount = io.read()
io.write "How many slices/pieces per pizza are there? "
slicesAmount = io.read()
io.write (peopleAmount, " people with ", pizzasAmount, " pizzas \n")
totalSlices = pizzasAmount * slicesAmount
io.write ("There are ", totalSlices, " slices/pieces of pizza in total. \n")
slicesShared = math.floor(totalSlices / peopleAmount)
io.write ("Each person gets ", (slicesShared), " slices/pieces of pizza. \n")
slicesLeft = totalSlices % peopleAmount
io.write ("There are ", slicesLeft, " slices/pieces of pizza left. \n")
--	Without using modulo:
--	io.write ("There are ", totalSlices - (slicesShared * peopleAmount), " slices/pieces of pizza left. \n")