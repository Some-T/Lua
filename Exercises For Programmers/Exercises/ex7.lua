function round(num, numDecimalPlaces)
  return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

io.write "What is the length of the room in feet? "
lengthInFeet = io.read()
io.write "What is the width of the room in feet? "
widthInFeet = io.read()
io.write ("You entered dimensions of ", lengthInFeet, " feet by ", widthInFeet, " feet. \n")
io.write ("The area is \n") 
areaInFeet = math.floor(lengthInFeet * widthInFeet)
io.write (areaInFeet, " square feet \n")
constantVar = (0.09290304)
calculationVar = constantVar * areaInFeet
io.write (round(calculationVar,3), " square meters \n")