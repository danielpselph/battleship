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

  def test_has_cells
    skip
  end

  def test_a_cell_is_not_valid
    skip
  end
end
