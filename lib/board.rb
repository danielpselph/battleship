class Board

  attr_reader :cells, :x_axis, :y_axis

  def initialize
    @x_axis = ("A".."D").to_a
    @y_axis = (1..4).to_a
    @cells = {
      "A1" => Cell.new("A1"),
      "A2" => Cell.new("A2"),
      "A3" => Cell.new("A3"),
      "A4" => Cell.new("A4"),
      "B1" => Cell.new("B1"),
      "B2" => Cell.new("B2"),
      "B3" => Cell.new("B3"),
      "B4" => Cell.new("B4"),
      "C1" => Cell.new("C1"),
      "C2" => Cell.new("C2"),
      "C3" => Cell.new("C3"),
      "C4" => Cell.new("C4"),
      "D1" => Cell.new("D1"),
      "D2" => Cell.new("D2"),
      "D3" => Cell.new("D3"),
      "D4" => Cell.new("D4")
    }
  end

  def validate_coordinate?(coordinate)
    @cells.has_key?(coordinate)
  end

  def valid_placement?(ship, coordinate)
    return false if ship.length != coordinate.length
    x = []
    y = []
    z = 1
    coordinate.each do |val|
      x << val.split(//)[0]
      y << (val.split(//)[1]).to_i
    end

    require "pry"; binding.pry
  end



end
  #
  # def validate_vertical_consecutive(coordinate)
  #   y = []
  #   coordinate.each do |num|
  #   y << num.split(//)[1]
  #   end
  # end
  #
  # def validate_horizontal_consecutive
  #   x = []
  #   coordinate.each do |let|
  #   x << let.split(//)[0]
  #   end
  #   # x.uniq.length == 1
  # end


# x = []
# y = []
# coordinate.each do |axis|
#   y << coordinate.join.split(//)
#   x << coordinate.join.split(//)
# end
