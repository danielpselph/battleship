require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'

class GameTest < Minitest::Test

  def setup
    @player = Player.new
    @computer = Computer.new
    @player_board = Board.new
    @player_cruiser = Ship.new("cruiser", 3)
    @player_submarine = Ship.new("submarine", 2)
    @computer_board = Board.new
    @computer_cruiser = Ship.new("cruiser", 3)
    @computer_submarine = Ship.new("submarine", 2)
  end

  def test_a_comp_ship_can_be_placed
    assert_equal true, @game.place_comp_ships
  end
end
