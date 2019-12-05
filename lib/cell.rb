class Cell
  attr_reader :coordinate, :ship, :empty

  def initialize(coordinate)
    @coordinate = coordinate
    @ship = nil
    @fired_upon = false
    @empty = true
  end

  def empty?
    @empty
  end

  def place_ship(ship)
    @ship = ship
    @empty = false
  end

  def fired_upon?
    @fired_upon
  end

  def fire_upon
    @fired_upon = true
    if @empty == false
      @ship.hit
    end
  end

  def render(show_ship = false)
    return "S" if show_ship == true && empty? == false
    return "M" if fired_upon? == true && empty? == true
    return "H" if fired_upon? == true && empty? == false && @ship.health >= 1
    return "X" if fired_upon? == true && empty? == false && @ship.health == 0
    "."
  end


end
