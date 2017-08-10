io.write "What is your first number? "
a = io.read()
io.write "What is your second number? "
b = io.read()

io.write (a, " + ", b, " = ", math.floor(a + b), "\n")
io.write (a, " - ", b, " = ", math.floor(a - b), "\n")
io.write (a, " * ", b, " = ", math.floor(a * b), "\n")
io.write (a, " / ", b, " = ", math.floor(a / b), "\n")

--	Take note that I used the function math.floor to convert the data type of 
--	the global variables into integers, because there is no data type for integers in Lua.