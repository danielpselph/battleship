class Ship
  attr_reader :name, :length, :health

  def initialize(name, length, health = length)
    @name = name
    @length = length
    @health = health
  end

  def sunk?
    return true if @health == 0
    false
  end

  def hit
    @health -= 1
  end
end
