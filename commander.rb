require './mars'

class Commander
  X = 0
  Y = 1
  DIRECTION = 2

  def create_rover(startx,starty,startdirection)
    @startx = startx
    @starty = starty
    @startdirection = startdirection

  end

  def move_rover(move_command)
    move_command.split("").each do |movement|
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
    puts "X: #{@x}, Y: #{@y}, D: #{@direction}"
  end
end

command = Commander.new

puts "Input the starting X:"
startx = gets.chomp.to_i
puts "Input the starting Y:"
starty = gets.chomp.to_i
puts "Input the starting Direction (N,S,E,W):"
startdirection = gets.chomp.to_s

puts "Input the Instructions (L,R,M):"
move_instructions = gets

command.create_rover(startx,starty,startdirection)
command.move_rover(move_instructions)

command.display_rover



