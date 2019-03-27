--Math in Lua version 2.9 ; Created by Ari ; Now on GitHub

start = "" ; x = 0 ; y = 0

io.write(os.date("START TIME: %H:%M:%S\n") , "Lowercase Choices Only\n")

io.write('Hello, what is your name? ')
name = io.read()
io.write('Nice to meet you ' , name , '!\n')

while start ~= 'yes' and start ~= 'y' and start ~= 'no' and start ~= 'n' do
	io.write("Do you want to do some math? ")
	start = io.read()
	if start == 'exit' then break end
end

--{{{Math Portion
while start == 'yes' or start == 'y' do
	--take input for both numbers
	io.write("Give me X: ")
	x = io.read()
	io.write("Give me Y: ")
	y = io.read()

	--output part, prints each part on a different line
	io.write(x, ' and ', y, "\n")
	io.write(x, ' plus ', y, ' equals ', x + y, "\n")
	io.write(x, ' minus ', y, '  equals ', x - y, "\n")
	io.write(x, ' multiplied by ', y, ' equals ', x * y, "\n")
	io.write(x, ' divided by ', y, ' equals ', x / y, "\n")
	io.write("Again? ")

	start = ""
	
	--output current math data to a file called 'math-history'
	file = io.open("math-history", "a")
	file:write("---- ", os.date("%a, %b %d,%H:%M:%S"), " ----\n")
	file:write("Name: ", name, "\n")
	file:write("Numbers: ", x, " and ", y, "\n")
	file:write("Addition: ", x + y, "\n")
	file:write("Subtration: ", x - y, "\n")
	file:write("Multiplication: ", x * y, "\n")
	file:write("Division: ", x / y, "\n")
	file:write("------------------------------\n")
	file:close()

	os.rename("math-history", name .. os.date(": %a, %b %d,%H:%M:%S"))

	--prompt user if they would like to keep going
	while start ~= 'y' and start ~= 'yes' and start ~= 'n' and start ~= 'no' do
		start = io.read()
		if start == 'exit' then break end
		if start ~= 'y' and start ~= 'yes' and start ~= 'n' and start ~= 'no' then
			io.write("Again?")
		end
	end
end
--}}}

io.write('Goodbye\n' , os.date("EXIT TIME: %H:%M:%S\n"))
return 0
