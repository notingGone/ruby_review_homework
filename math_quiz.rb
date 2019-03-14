#!/usr/bin/env ruby -wKU
# /home/elliott/dev/tts/ruby/day_7/ruby_review_homework/math_quiz.rb
# Write a program that asks the user to do some simple arithmetic
# (let's say 1 + 2, and 5 - 3) and lets them know if
# they got the question right.

# TODO: if n1 < n2 && / or %, then switch numbers
def new_equation
  operators = ['+', '-', '*', '/', '%', '**']
  srand
  num1 = rand(1..9).to_s
  num2 = rand(1..9).to_s
  operator = operators[rand(6)]
  return [num1, operator, num2].join(' ') if %w[/ %].include? operator

  [num1, operator, num2].join(' ')
end

# TODO: add regex to check for only numbers and '.'
def guess
  answer = ''
  while answer == '' # or answer[/\]
    answer = gets.chomp
    answer = answer.include?('.') ? answer.to_f : answer.to_i
  end
  answer
end

# equation[int, '', int] contains the individual elements of the math problem
# question contains the equation as a string
def quiz
  # TODO: fix score tally logic
  total = 0
  score = 0
  # equation = new_equation
  # question = equation.join(' ')
  question = new_equation
  answer = eval(question)
  print question + ' = '
  player_guess = guess
  if player_guess == answer
    puts "That's right!"
    score += 1
  else
    puts "Sorry, the answer is #{answer}"
  end
  total += 1
  print 'Another? '
  another = gets.chomp.downcase
  quiz if %w[y yes].include? another
  [score, total]
end

puts 'Welcome to the Math Quiz'
puts "Let's get started!"
tally = quiz
puts "You got #{tally[0]} correct out of #{tally[1]}"
