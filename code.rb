# Your code goes here
puts "Enter 'e' for easy or 'h' for hard."
game_difficulty = gets.chomp

user_score = 1

if game_difficulty == "e"
  random_number = rand(1..10)
  puts "Guess a number, 1-10:"
  user_guess = gets.chomp.to_i

elsif  game_difficulty == "h"
  random_number = rand(1..20)
  puts "Guess a number, 1-20:"
  user_guess = gets.chomp.to_i
end

while user_guess != random_number
  puts "Wrong choice, guess again!"
  user_guess = gets.chomp.to_i
  user_score += 1
end
puts "You got it!"
puts "Your score was : " + user_score.to_s
