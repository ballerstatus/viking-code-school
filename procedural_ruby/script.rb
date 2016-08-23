# computer determines number
# human num_guesses three times
# computer provides higher/lover feedback

# helper method
def check_guess (guess, secret_number, num_guesses)
  if guess == secret_number
    puts "You WIN! It was #{guess}!"
    exit
  elsif num_guesses == 3
    puts "You LOSE! The secret number was #{secret_number}."
    puts "Sucker."1
  elsif guess > secret_number
    puts "The secret number is LOWER than #{guess}."
  else
    puts "The secret number is HIGHER than #{guess}."
  end
end
# main method
def play
  secret_number = rand(1..10)
  puts "Thanks for playing hi/lo"
  puts "You have three num_guesses to find the number between 1 and 10"
  num_guesses = 0
  while num_guesses < 3
    puts "Guess ##{num_guesses+1}:"
    print "> "
    guess = gets.chomp.to_i
    num_guesses+=1
    puts "Your guess was #{guess}!"
    check_guess(guess, secret_number, num_guesses)
  end
end

play

=begin
# third guess
puts "Make your LAST guess:"
print "> "

guess = gets.chomp.to_i

puts "Your guess was #{guess}!"

if guess == secret_number
  puts "You WIN! It was #{guess}!"
  exit
else
  puts "You LOSE! The secret number was #{secret_number}."
end

puts "Sucker."
  
# loop above takes care of repitition for turns 1-2
=begin
# second guess
puts "Make your second guess:"
print "> "

guess = gets.chomp.to_i

puts "Your guess was #{guess}!"

if guess == secret_number
  puts "You WIN! It was #{guess}!"
  exit
elsif guess > secret_number
  puts "The secret number is LOWER than #{guess}."
else
  puts "The secret number is HIGHER than #{guess}."
end

# third guess
puts "Make your LAST guess:"
print "> "

guess = gets.chomp.to_i

puts "Your guess was #{guess}!"

if guess == secret_number
  puts "You WIN! It was #{guess}!"
  exit
else
  puts "You LOSE! The secret number was #{secret_number}."
end

puts "Sucker."
=end

  