#!/usr/bin/env ruby -wKU

#1
10.times { puts "What's up?" }

#2 this example will output 0 through 5 each on a line
6.times do |count|
  puts count
end

#3
array = [1, 2, 3, 4, 5]
array.each { |x| puts x }

#4
(1..4).each { |x| puts array[x] }

#5
atl_neightborhoods = %w[Virginia\ Highlands Grant\ Park Buckhead]
atl_neightborhoods.each { |count| puts count }

puts atl_neightborhoods.count

puts

#6 error after 6 bananas
# 6.times do
#   x = 'banana'
#   puts x
# end
# puts x

puts

#6 corrected, puts "banana" 7 times
x = 'banana'
6.times { puts x }
puts x

puts

#7 puts banana 6 times, then puts banana (NOT 'apple')!!
x = 'apple'
6.times { x = 'banana'; puts x }
puts x

puts

#8 puts banana 6 times then apple
6.times { x = 'banana'; puts x }
x = 'apple'
puts x

puts

#9
countdown = [1, 2, 3, 4, 5]
countdown.each_index { |i| puts countdown.reverse[i] }
puts 'Blastoff!'
