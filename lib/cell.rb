class Cell

  attr_reader :coordinate, :ship, :empty

  def initialize(coordinate)
    @coordinate = coordinate
    @ship = nil
    @fired_upon = false
    @empty = empty
  end

  def empty?
    return true if @ship == nil
    false
  end

  def place_ship(ship)
    @ship = ship
    # @empty = false
  end

  def fired_upon?
    @fired_upon
    #need to focus on empty method
    #needs to be independent of hit method
    # if @ship.health != @ship.length
    #   true
    # else
    #   false
    # end
  end

  def fire_upon
    @ship.hit
    @fired_upon = true
  end

  def render
    if @ship == nil
      "."
    elsif
    end
  end

end
