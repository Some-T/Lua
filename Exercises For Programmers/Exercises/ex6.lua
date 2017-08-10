io.write "What is your current age? "
currentAge = io.read()
io.write "At what age would you like to retire? "
retireAge = io.read()


initialSum =  (math.floor(retireAge - currentAge))
currentYear = (math.floor(os.date('%Y')))
overallSum = (math.floor(initialSum + currentYear))


print (initialSum)
print (currentYear)
print (overallSum)


io.write("You have ", initialSum, " years left until you can retire. It's ", currentYear, ",", " so you can retire in ", overallSum, ". \n")