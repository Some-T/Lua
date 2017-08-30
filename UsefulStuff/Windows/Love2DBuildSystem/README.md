# Debug Mode Love2D Sublime Text 3 Build Sytem

## Information:

### What it does:

This Sublime Text 3 build system is to allow you to easily launch .lua files scripted towards Love2D framework from sublime text 3 in Windows along with the Windows Command prompt.


### File: Debug Mode Love2D.sublime-build

Tested on Sublime Text 3 in Windows 10 only with `love2d directory` set via environment variables (although you can just replace this, the word `love` specifically on line 3 in the build system with the full path)


### File: conf.lua

This was created based on information via https://love2d.org/wiki/Config_Files nothing else should be required in the main.lua file but just for the sake of it if it is not working try and put: `io.stdout:setvbuf("no")` at the top of your main.lua file additionally try and put `require = conf.lua` at the top of your main.lua file as well, additionally try and comment out `io.stdout:setvbuf("no")` in conf.lua as well. Everything is included to get going as examples anyway.


### File: main.lua

Similar to conf.lua see above, used code https://love2d.org/wiki/Tutorial:Physics mainly plus normal lua code. 


### Known issues:

- Issue number 1: Does not seem to run properly if the game directory has spaces in it, whether that is a sublime text 3 build system issue or a love2d issue I am not sure at this stage but please let me know if you have figured out a way to fix that / contribute a fix if you know of one.

- Issue number 2: Not so much an issue but the way I have designed this, only works if you create a new sublime text 3 project file in this directory on your own computer. To do this, afterdownloading this directory go to `Project' in the Sublime Text 3 Menu at the top of your screen and select `Save Project As...` then once that is done go into the same menu again and add this directory by selecting the option `Add Folder to Project...`


### Useful links:


- https://love2d.org/wiki/Config_Files
- https://love2d.org/wiki/Tutorial:Physics


### Preview / Screenshot:

![Screenshot](http://i.imgur.com/ZNM5dZU.png)