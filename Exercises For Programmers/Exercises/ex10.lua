io.write "Enter the price of item 1: "
priceItemOne = io.read()
io.write "Enter the quantity of item 1: "
quantityItemOne = io.read()

io.write "Enter the price of item 2: "
priceItemTwo = io.read()
io.write "Enter the quantity of item 2: "
quantityItemTwo = io.read()

io.write "Enter the price of item 3: "
priceItemThree = io.read()
io.write "Enter the quantity of item 3: "
quantityItemThree = io.read()

subTotalCalc1 = priceItemOne * quantityItemOne
subTotalCalc2 = priceItemTwo * quantityItemTwo
subTotalCalc3 = priceItemThree * quantityItemThree

subTotalCalcOverall = subTotalCalc1 + subTotalCalc2 + subTotalCalc3
io.write ("Subtotal: $",string.format("%.2f", subTotalCalcOverall), "\n")

percentageVar = (subTotalCalcOverall * 5.5 / 100)
io.write("Tax: $", string.format("%.2f", percentageVar), "\n")

totalVar = subTotalCalcOverall + percentageVar
io.write("Total: $", string.format("%.2f", totalVar), "\n")