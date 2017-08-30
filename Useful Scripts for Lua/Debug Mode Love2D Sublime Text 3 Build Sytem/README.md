# Debug Mode Love2D Sublime Text 3 Build Sytem

## Information:


### File: Debug Mode Love2D.sublime-build

Tested on Sublime Text 3 in Windows 10 only with `love2d directory` set via environment variables (although you can just replace this, the word `love` specifically on line 3 in the build system with the full path)


### File: conf.lua

This was created based on information via https://love2d.org/wiki/Config_Files nothing else should be required in the main.lua file but just for the sake of it if it is not working try and put: `io.stdout:setvbuf("no")` at the top of your main.lua file additionally try and put `require = conf.lua` at the top of your main.lua file as well, additionally try and comment out `io.stdout:setvbuf("no")` in conf.lua as well.