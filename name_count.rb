#!/usr/bin/env ruby -wKU
# ~/dev/tts/ruby/day_7/name_count.rb

# Write a program that asks for the user's first name
# and then last name. Then, have the program repeat back
# the full name as well as how many letters are in
# the user's full name.

def non_empty_input
  input = gets.chomp while input == '' or input == nil
  input
end

print 'Enter your first name: '
first_name = non_empty_input
print 'Enter your last name: '
last_name = non_empty_input
total_letters = (first_name + last_name).gsub(/\s+/, '').length
puts "Your name, '#{first_name} #{last_name}'"
puts "has #{total_letters} letters."
