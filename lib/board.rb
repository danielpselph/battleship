class Board
  attr_reader :cells

  def initialize
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
    require "pry"; binding.pry
  end

  def validate_coordinate?(coordinate)
    @cells.has_key?(coordinate)
  end

  def valid_placement?(ship, coordinate)
    return false if coordinate.length != ship.length
    return false if over_lapping?(coordinate) == false
    x_axis = []
    y_axis = []
    coordinate.each do |val|
      x_axis << val.split(//)[0]
      y_axis << (val.split(//)[1]).to_i
    end

    if valid_x(x_axis) == true && valid_y(y_axis) == true
      false
    elsif hor_x(x_axis) == true && valid_y(y_axis) == true || valid_x(x_axis) == true && vert_y(y_axis) == true
      true
    else
      false
    end
  end

  def valid_y(y_axis)
    y_axis.each_cons(2).all? do |x, y|
      if x == y - 1
        true
      end
    end
  end

  def valid_x(x_axis)
    x_axis.each_cons(2).all? do |x, y|
      if x.ord == y.ord - 1
        true
      end
    end
  end

  def hor_x(x_axis)
    if x_axis.each {|let| let.ord == let.ord}
      true
    end
  end

  def vert_y(y_axis)
    if y_axis.each {|num| num == num}
      true
    end
  end

  def place(ship, coordinate)
    if valid_placement?(ship, coordinate)
      coordinate.each do |coord|
        @cells[coord].place_ship(ship)
      end
      require "pry"; binding.pry
    end
  end

  def over_lapping?(coordinate)
    coordinate.each do |coord|
      return false if @cells[coord].empty? == false
    end
  end

  def render(show_ship = false)
    "  1 2 3 4 \n" +
    "A #{@cells["A1"].render(show_ship)} #{@cells["A2"].render(show_ship)} #{@cells["A3"].render(show_ship)} #{@cells["A4"].render(show_ship)} \n" +
    "B #{@cells["B1"].render(show_ship)} #{@cells["B2"].render(show_ship)} #{@cells["B3"].render(show_ship)} #{@cells["B4"].render(show_ship)} \n" +
    "C #{@cells["C1"].render(show_ship)} #{@cells["C2"].render(show_ship)} #{@cells["C3"].render(show_ship)} #{@cells["C4"].render(show_ship)} \n" +
    "D #{@cells["D1"].render(show_ship)} #{@cells["D2"].render(show_ship)} #{@cells["D3"].render(show_ship)} #{@cells["D4"].render(show_ship)} \n"
  end
end
