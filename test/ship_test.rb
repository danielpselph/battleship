require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShitTest < Minitest::Test

  def setup
    @cruiser = Ship.new("Cruiser", 3)
  end

  def test_ship_exists
    assert_instance_of Ship, @cruiser
  end


end
