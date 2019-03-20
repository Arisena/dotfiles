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
file:write("Start:")
file:write("Name: ", name, "\n")
file:write("Problem: ", problem, "\n")
file:write("Notes: ", note, "\n")
file:write("End:")
file:close()
--}}}
