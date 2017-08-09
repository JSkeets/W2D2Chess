require_relative 'display.rb'
require_relative 'board.rb'
class Game

  def initialize
    @board = Board.new()
    @display = Display.new(@board)

  end

  def run
    while true
    @display.play
    

   end
  end


end

if __FILE__==$PROGRAM_NAME
  x = Game.new
  x.run
end
