
puts "This programs asks for a password."

print "Enter a password and press Enter: "

password = gets

known_password = "12345"

if password === known_password
  puts "Welcome."
else
  puts "I don't know you!"
end