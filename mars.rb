class Rover


  def initialize (x,y,direction)
    @x = x.to_i
    @y = y.to_i
    @direction = direction
  end

  def move
    if @direction == "N"
      @y += 1
    elsif @direction == "E"
      @x += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "W"
      @y -= 1
    end
  end  
        
  def turn_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    elsif @direction == "W"
      @direction = "N"
    end
  end

  def turn_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @directon = "S"
    elsif @direction == "S"
      @direction = "E"
    elsif @direction == "E"
      @direction = "N"
    end
  end

  def to_s
    puts "X: #{@x}, Y: #{@y}, D: #{@direction}"
  end

end

class Commander
  
  def create_rover(startx,starty,startdirection)
    @rover = Rover.new(startx.to_i, starty.to_i, startdirection)
    #@startx = startx
    #@starty = starty
    #@startdirection = startdirection
  end
  
  def move_rover(move_commands)
    move_commands.split("").each do |movement|
      movement.upcase!
      if movement == "L"
        @rover.turn_left
      elsif movement == "R"
        @rover.turn_right
      elsif movement == "M"
        @rover.move
      end
    end
  end

  def display_rover
    @rover.to_s
  end

end

command = Commander.new

puts "Rover 1: Input the starting X:"
startx = gets.chomp
puts "Rover 1: Input the starting Y:"
starty = gets.chomp
puts "Rover 1: Input the starting Direction (N,S,E,W):"
startdirection = gets.chomp

puts "Input the Instructions (L,R,M):"
move_instructions = gets

command.create_rover(startx,starty,startdirection)
command.move_rover(move_instructions)

command.display_rover

