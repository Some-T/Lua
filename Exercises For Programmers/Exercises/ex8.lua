io.write "How many people? "
peopleAmount = io.read()
io.write "How many pizzas do you have? "
pizzasAmount = io.read()
io.write "How many slices/pieces per pizza are there? "
slicesAmount = io.read()
io.write (peopleAmount, " people with ", pizzasAmount, " pizzas \n")
totalSlices = pizzasAmount * slicesAmount
io.write ("There are ", totalSlices, " pieces of pizza in total. \n")
io.write ("Each person gets ", (totalSlices / peopleAmount), " pieces of pizza. \n")
-- io.write ("There are ",)
-- https://bnewing.github.io/JavaScript-57-Exercises-for-Programmers/Tasks/Task8/task8.html