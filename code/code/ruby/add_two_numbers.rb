# prints message to the screen with line break
puts "This program adds two numbers."

#prints message without a line break
print "Enter the first number and press Enter: "

#waits for input, storing input into the variable on the left side.
first_number = gets

print "Enter the second number and press Enter: "

second_number = gets

# When user enters a number, they'll press the enter key. It'll be saved
# as the character \n. This next line remove the last character from a
# string, effectivetly removing the \n character.
first_number.chop!
second_number.chop!

# convert the entered values to integers.

first_number = first_number.to_i
second_number = second_number.to_i

#do the math and print out the result

sum = first_number + second_number

message = "The sum of #{first_number} + #{second_number} is #{sum}"

puts message
