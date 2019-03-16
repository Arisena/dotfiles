name = "" ; problem = "" ; note = ""

io.write("Name: ")
name = io.read()

io.write("Problem: ")
problem = io.read()

io.write("Note: ")
note = io.read()

file = io.open(os.date("%a%b%d,%H%M%S"), "w")
file:write("Name: ", name, "\n")
file:write("Problem: ", problem, "\n")
file:write("Notes: ", note)
file:close()

file = io.open("", "w")
file:close()
