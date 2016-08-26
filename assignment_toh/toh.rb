# helper methods

def show_rules
  line_width = 60
  puts ""
  puts "Welcome to Tower of Hanoi!\n".center line_width
  puts "The object of the game is to move all of your disks from the left rod"
  puts "to either the middle rod or the right rod - one disk at a time.\n\n"
  puts "Here are the rules:\n\n"
  puts "1. Only one disk can be moved at a time."
  puts "2. Each move consists of taking the upper disk from one of the stacks and"
  puts "   placing it on top of another stack i.e. a disk can only be moved if it is"
  puts "   the uppermost disk on a stack."
  puts "3. No disk may be placed on top of a smaller disk.\n\n"
  puts "You may type QUIT at any time to exit the game.\n".center line_width
end

def initialize_game (rods,disks)
  rods[1] = (1..disks).to_a # [1,2,3,4 <-- top to bottom -->]
  return rods
end

def print_rods (rods)
  rods.each {|rod,disk_number|puts "Rod #{rod}: #{disk_number}"}
end

def game_won (disks,rods,moves)
  if rods[2].length == disks || rods[3].length == disks
    puts "Winner winner, chicken dinner!"
    if moves == 1
      puts "You got it on the first try!"
    else
      puts "It only took you #{moves} tries!"
    end
    exit
  end
end

# begin game

# show user the rules
show_rules

# initialize rods
rods = {1=>[],2=>[],3=>[]}

# determine number of disks in play
puts "How many disks would you like to play with?"
disks = gets.chomp.to_i
initialize_game(rods,disks)
moves = 0

# show game board
puts "Game starting. Good luck!"
print_rods (rods)

# play the actual game
while true

  # set up user's move
  move_from = nil
  move_to = nil

  # FROM
  while move_from == nil
    puts "Which rod would you like to move a disk FROM?"
    from = gets.chomp
    if from.upcase == "QUIT"
      exit
    elsif rods.key?(from.to_i)
      move_from = rods[from.to_i]
    else
      puts "Please select a valid rod."
    end
  end

  # TO
  while move_to == nil
    puts "Which rod would you like to move the selected disk TO?"
    to = gets.chomp
    if to.upcase == "QUIT"
      exit
    elsif rods.key?(to.to_i)
      move_to = rods[to.to_i]
    else
      puts "Please select a valid rod."
    end
  end

  # validate user's move
  if move_from.empty?
    puts "Please enter a valid move."
  else move_to.none? || move_from.first < move_to.first
    move_to.unshift(move_from.first)
    move_from.shift    
  end

  # display game board after each move
  print_rods (rods)
  moves += 1

  # check if game has been won
  game_won(disks,rods,moves)
  
end
