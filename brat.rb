#!/usr/bin/env ruby -wKU

# Did your brother or sister ever copycat everything you said
# just to get under your skin? Man, was that annoying or what?!
# Let's write a program that does the same thing.
# This annoying program can only be stopped if the user says
# "I'm  a dummy" because the program won't repeat something
# so self-deprecating!

until (a = gets.chomp.downcase) == "i'm a dummy"
  puts a
end
