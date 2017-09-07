-- Based off of the tutorial located at: https://simplegametutorials.github.io/snake/
-- Please contact jamie.cropley@gmail.com for any matters relating to this game.



-- The below function sets the window, game settings, logic, icon etc...:

function love.load()
  timer = 0
  -- Move window size etc... to conf.lua eventually?
  local xWindowSize = 300
  local yWindowSize = 280
  local title = "Snake"
  local icon = "icon.png"

  love.window.setTitle(title)
  love.window.setIcon(love.image.newImageData(icon))
  love.window.setMode(xWindowSize, yWindowSize, {resizable=false, vsync=false, minwidth=xWindowSize, minheight=yWindowSize})


  

-- Debugging output:

  io.write("Initial window information: \n")
  io.write("=========================== \n \n")
  io.write("- x / width of window is: ", xWindowSize, " \n")
  io.write("- y / length size of window is: ", yWindowSize, " \n")
  io.write("- Title is: ", title, "\n")
  io.write("- Icon file is specified as: ", icon, "\n")
end




-- The below function draws stuff for the game:

function love.draw()
  
end

function love.draw()
-- Debugging output:

  -- io.write(gridXCount)
  -- io.write(gridYCount)
  -- io.write(cellSize)


  local gridXCount = 20 local gridYCount = 15
  local cellSize = 15

  love.graphics.setColor(71, 71, 71)
  love.graphics.rectangle(
  'fill',
  0,
  0,
  gridXCount * cellSize,
  gridYCount * cellSize
  )


    local snakeSegments = {
        {x = 3, y = 1},
        {x = 2, y = 1},
        {x = 1, y = 1},
    }

    for segmentIndex, segment in ipairs(snakeSegments) do
        love.graphics.setColor(255, 255, 255)
        love.graphics.rectangle(
            'fill',
            (segment.x - 1) * cellSize,
            (segment.y - 1) * cellSize,
            cellSize - 1,
            cellSize - 1
        )
    end
    love.graphics.print("Score: ", 5, 245)
end


function love.update(dt)
    timer = timer + dt
    local timerLimit = 0.15
    if timer >= timerLimit then
        timer = timer - timerLimit
        io.write("Tick \n")
    end
end
