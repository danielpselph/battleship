require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require './lib/board'

class BoardTest < Minitest::Test

  def setup
    @board = Board.new
  end

  def test_board_exists
    assert_instance_of Board, @board
  end

  def test_board_has_valid_coordinates
    assert_equal true, @board.validate_coordinate?("A1")
    assert_equal true, @board.validate_coordinate?("D4")
    assert_equal false, @board.validate_coordinate?("A5")
    assert_equal false, @board.validate_coordinate?("E1")
    assert_equal false, @board.validate_coordinate?("A22")
  end
end
