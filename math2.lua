--Math in Lua version 2 ; Created by Ari ; Now on GitHub

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
	io.write("Give me x and y:\n")
	x,y = io.read("*n" , "*n")

	--output part, prints each part on a different line
	io.write(x , ' and ' , y , "\n" , x , ' plus ' , y , ' equals ' , x + y , "\n" , x , ' minus ' , y , '  equals ' , x - y , "\n" , x , ' multiplied by ' , y , ' equals ' , x * y , "\n" , x , ' divided by ' , y , ' equals ' , x / y , "\n")

	start = ""

	--prompt user if they would like to keep going
	while start ~= 'y' and start ~= 'yes' and start ~= 'n' and start ~= 'no' do
		start = io.read()
		if start == 'exit' then break end
		if start ~= 'y' and start ~= 'yes' and start ~= 'n' and start ~= 'no' then
			io.write("Again?\n")
		end
	end
end
--}}}

io.write('Goodbye\n' , os.date("EXIT TIME: %H:%M:%S\n"))
return 0
