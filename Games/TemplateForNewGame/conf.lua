-- io.stdout:setvbuf("no") -- Might be needed for some versions of Windows?

function love.conf(t)            
    t.console = true
    --t.window.resizable = true
end