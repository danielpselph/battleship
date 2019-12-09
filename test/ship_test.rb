require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < Minitest::Test

  def setup
    @cruiser = Ship.new("Cruiser", 3)
  end

  def test_ship_exists
    assert_instance_of Ship, @cruiser
  end

  def test_ship_has_attributes
    assert_equal "Cruiser", @cruiser.name
    assert_equal 3, @cruiser.length
    assert_equal 3, @cruiser.health
  end

  def test_ship_starts_not_sunk
    assert_equal false, @cruiser.sunk?
  end

  def test_ship_can_be_hit_and_loses_health_and_can_sink
    @cruiser.hit
    assert_equal 2, @cruiser.health
    @cruiser.hit
    assert_equal 1, @cruiser.health
    assert_equal false, @cruiser.sunk?
    @cruiser.hit
    assert_equal true, @cruiser.sunk?
    @cruiser.hit
    assert_equal true, @cruiser.sunk?
    #split hit and sunk
  end

end
