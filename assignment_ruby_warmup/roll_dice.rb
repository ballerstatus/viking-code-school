# METHOD roll_dice

# get NUMBER of DICE rolled 

# ROLL N-1 DICE

# Add to SUM (starting at 0)

# CONTINUE rolling dice until N = 0

# Add each roll to SUM

# PUTS SUM
=begin
def roll_dice number_rolls
  puts "How many dice would you like to roll?"
  number_rolls = gets.chomp
  score = 0
  while number_rolls > 0
    roll = rand(1..6).to_i
    score += roll
    number_rolls -= 1
  end
end
=end

def roll_dice (dice=1)
  score = 0
  while dice > 0
    roll = rand(1..6).to_i
    score += roll
    dice -= 1
  end
  puts score
  puts ''
end

roll_dice(4)
roll_dice(2)
roll_dice(50)
roll_dice