--	Useful site to actually make it count down properly: 
--	http://lua-users.org/wiki/SleepFunction

io.write "Enter how many seconds you would like the timer to run for: "
timeInSeconds = io.read()


for timeInSeconds = timeInSeconds, 0, -1 do -- I need to create a module or function to make this go slower!
    io.write(timeInSeconds, "\n") 
end