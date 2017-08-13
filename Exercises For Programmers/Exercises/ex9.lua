io.write "What is the length of the room? "
lengthRoom = io.read()
io.write "What is the width of the room? "
widthRoom = io.read()

squareFeetRoom = lengthRoom * widthRoom
gallonCalc = squareFeetRoom / 350
if squareFeetRoom >= 350.01 then 
gallonCalc  = math.floor(squareFeetRoom / 350 + 1)
end

if squareFeetRoom <= 350.00 then 
gallonCalc  = 1

end

io.write ("You will need to purchase ", gallonCalc, " gallons of paint to cover ", squareFeetRoom, " square feet. \n")