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
  end

  def validate_coordinate?(coordinate)
    @cells.has_key?(coordinate)
  end

  def valid_placement?(ship, coordinate)
    return false if coordinate.length != ship.length
    x = []
    y = []
    coordinate.each do |val|
      x << val.split(//)[0]
      y << (val.split(//)[1]).to_i
    end

    if valid_x(x) == true && valid_y(y) == true
      false
    elsif hor_x(x) == true && valid_y(y) == true || valid_x(x) == true && vert_y(y) == true
      true
    else
      false
    end
    # valid_y(y)
    # valid_x(x)
    # vert_y(y)
    # hor_x(x)

  end

  def valid_y(y)
      y.each_cons(2).all? do |x, y|
        if x == y - 1
          true
        else
          false
        end
      end
  end

  def valid_x(x)
      x.each_cons(2).all? do |x, y|
        if x.ord == y.ord - 1
          true
        else
          false
        end
      end
  end

  def hor_x(x)
    if x.each {|let| let.ord == let.ord}
      true
    else
      false
    end
  end

  def vert_y(y)
    if y.each {|num| num == num}
      true
    else
      false
    end
  end

  def place(ship, coordinate) #need ship and coord arguments
    if valid_placement?(ship, coordinate)
      coordinate.each do |coord|
        @cells[coord].place_ship(ship)
      end
    end
  end
end
#BUILD y.each AND x.each INTO SEPARATE METHODS, AND CALL THEM IN .valid_placement?
#   def validate_y
#     y.each_cons(2) do |num|
#       if num[1][1] - num[0][1] != 1
#         return false
#         require "pry"; binding.pry
#
#       end
#       true
#     end
#   end
#
#   def validate_x
#     x.each_cons(2) do |let|
#       if let[1][0].ord - let[0][0].ord != 1
#         return false
#       end
#     end
#       true
#   end
# end
