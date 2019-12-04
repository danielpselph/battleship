class Cell

  attr_reader :coordinate, :ship, :empty

  def initialize(coordinate, empty = true)
    @coordinate = coordinate
    @ship = ship
    @empty = empty
  end

  def empty?
    @empty
  end

  def place_ship(ship)
    @ship = ship
    @empty = false
  end

  def fired_upon?
    if @ship.health != @ship.length
      true
    else
      false
    end
  end

  def fire_upon
    @ship.hit
  end

end
