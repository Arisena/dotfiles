function number()
  local a = io.read()
  return a
end

a = 6

io.write("The first number is 6, now give me a second one : ")

b = number()

print('Addition : ' .. a + b)
print('Subtraction : ' .. a - b)
print('Multiplication : ' .. a * b)
print('Division : ' .. a / b)