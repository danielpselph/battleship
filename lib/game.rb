require_relative 'ship'
require_relative 'cell'
require_relative 'board'
require_relative 'player'
require_relative 'computer'
#

class Game

  def initialize
    @player = Player.new
    @computer = Computer.new
    @player_board = Board.new
    @player_cruiser = Ship.new("cruiser", 3)
    @player_submarine = Ship.new("submarine", 2)
    @computer_board = Board.new
    @computer_cruiser = Ship.new("cruiser", 3)
    @computer_submarine = Ship.new("submarine", 2)
  end

  def start
    main_menu
    # setup
    # turn
    # game_over
  end

  def main_menu
    puts "Welcome to BATTLESHIP!"
    puts "Enter p to play. Enter q to quit."
    #if statement to either start game or quit
    play = gets.chomp
      if play.downcase == "p"
        setup
      else play.downcase == "q"
        #quit game
      end
  end

  # def create_game
  #   @player_board = Board.new
  #   @player_cruiser = Ship.new("cruiser", 3)
  #   @player_sumbmarine = Ship.new("submarine", 2)
  #   @computer_board = Board.new
  #   @computer_cruiser = Ship.new("cruiser", 3)
  #   @computer_submarine = Ship.new("submarine", 2)
  # end

  def setup
    # @computer_board.place(@computer_cruiser)
    # @computer_board.render
    #setup computer board
      #place random ships for computer
      #need to write random placement method
    #Player ship placement
    puts "I have laid out my ships on the grid."
    puts "You now need to lay out your two ships."
    puts "The Cruiser is three units long and the Submarine is two units long."
    #display empty player board
      #@board.render
    puts "Enter the squares for the Cruiser (3 spaces):"
    #user input for Cruiser placement
    #need to confirm valid coordinates
      #@board.valid_placement(ship, coordinate)
    #error message if not valid
    puts "Those are invalid coordinates. Please try again:"
    puts "Enter the squares for the Submarine (2 spaces):"
    #user input for Submarine placement
    #need to confirm valid coordinates
      #@board.valid_placement(ship, coordinate)
    #error message if not valid
    puts "Those are invalid coordinates. Please try again:"
    #return to start method
  end

  def create_comp_ship_and_board

  end

  def turn
    #display computer board
    puts "=============COMPUTER BOARD============="
      #@board.render
    #display user board
    puts "==============PLAYER BOARD=============="
      #@board.render(true)
    #user chooses coordinate to fire on
    puts "Enter the coordinate for your shot:"
    #loop until valid coordinate is entered
    puts "Please enter a valid coordinate:"
    #computer chooses random coordinate to fire on
      #@cell.fire_upon
      #use .sample method to select random coordinate
    #report results of user shot
     #@board.render(true)
    #print user results
    puts "Your shot on #{coordinate} was a miss."
    puts "My shot on #{coordinate} was a miss."
    #report results of computer shot
      #@@board.render
    #need method to track user shots
      #prompt user to reenter coord if dupllicate
    #Loop until game is completed
    #End loop when user/comp ships sunk
    #break loop and return to start
  end

  def game_over
    #return win/loss messages
    #user win
    puts "You won!"
    #comp win
    puts "I won"
    #exit program
  end


end
