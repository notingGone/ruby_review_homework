#!/usr/bin/env ruby -wKU

# Write a program that asks the user for their
# favorite color. If the user answers blue OR green,
# the program tells the user "Good choice. That is a great color!"
# Otherwise, the program says "Really?" and then goes on to tell
# the user that that color (the program mentions the color by name)
# is really not its favorite.

puts 'What is your Name?'
gets.chomp
puts 'What is your quest?'
gets.chomp
puts 'What is your favorite color?'
color = gets.chomp.downcase
if %w[blue green].include? color
  puts "Grood choice, that's a great color"
else
  puts "Really?? #{color.capitalize} is not really my favorite."
end
