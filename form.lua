--Form : Version 2 : Created by Ari

name = "" ; problem = "" ; note = ""

--{{{Question Asking Part
io.write("Name: ")
name = io.read()

io.write("Problem: ")
problem = io.read()

io.write("Note: ")
note = io.read()
--}}}

--{{{File Writing Part
--this part writes all the variable to a file
file = io.open("Problem Form", "w")
file:write("Start:\n")
file:write("Name: ", name, "\n")
file:write("Problem: ", problem, "\n")
file:write("Notes: ", note, "\n")
file:write("End:\n")
file:close()
--moves file to the documents folder in the home directory
os.execute("mv 'Problem Form' ~/Documents/")
--}}}
