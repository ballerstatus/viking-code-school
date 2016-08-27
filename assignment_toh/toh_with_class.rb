class TowerOfHanoi

  # display rules
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

  # begin game with user input for disk number
  def initialize_game
    @rods = {1=>[],2=>[],3=>[]}
    @moves = 0
    puts "How many disks would you like to play with?"
    @disks = gets.chomp.to_i
    @rods[1] = (1..@disks).to_a # [1,2,3,4 <-- top to bottom -->]
    puts "Game starting. Good luck!"
    @rods.each {|rod,disk_number|puts "Rod #{rod}: #{disk_number}"}
  end

  # display game board
  def print_rods
    @rods.each {|rod,disk_number|puts "Rod #{rod}: #{disk_number}"}
  end

  # get user "move from" input + quit/validate
  def move_from
    @move_from = nil
    while @move_from == nil
      puts "Which rod would you like to move a disk FROM?"
      from = gets.chomp
      if from.upcase == "QUIT"
        exit
      elsif @rods.key?(from.to_i)
        @move_from = @rods[from.to_i]
      else
        puts "Please select a valid rod."
      end
    end
  end

  # get user "move to" input + quit/validate
  def move_to
    @move_to = nil
    while @move_to == nil
      puts "Which rod would you like to move the selected disk TO?"
      to = gets.chomp
      if to.upcase == "QUIT"
        exit
      elsif @rods.key?(to.to_i)
        @move_to = @rods[to.to_i]
      else
        puts "Please select a valid rod."
      end
    end
  end

  # validate entire move based on current rods
  def validate_move
    if @move_from.empty?
      puts "Please enter a valid move."
    elsif @move_to.none? || @move_from.first < @move_to.first
      @move_to.unshift(@move_from.first)
      @move_from.shift
      @moves += 1
    else @move_from.first > @move_to.first
      puts "You cannot place a larger disk on a smaller disk."
    end
  end

  # determine after each move if the game has been won
  def game_won
    if @rods[2].length == @disks || @rods[3].length == @disks
      puts "You win!"
      if @moves == 1
        puts "You got it on the first try!"
      else
        puts "It only took you #{@moves} tries!"
      end
      exit
    end
  end

  # play the darn thing
  def play_game
    show_rules
    initialize_game
    while true
      move_from
      move_to
      validate_move
      print_rods
      game_won
    end
  end

end

# let's do this!
game = TowerOfHanoi.new
game.play_game


















