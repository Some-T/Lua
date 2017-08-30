-- Based off of the tutorial located at: https://simplegametutorials.github.io/snake/
-- Please contact jamie.cropley@gmail.com for any matters relating to this game.

io.write("testing \n")
io.write(5+5, "\n")

function love.draw()
    local gridXCount = 20
    local gridYCount = 15
    local cellSize = 15

    love.graphics.setColor(71, 71, 71)
    love.graphics.rectangle(
        'fill',
        0,
        0,
        gridXCount * cellSize,
        gridYCount * cellSize
    )
end