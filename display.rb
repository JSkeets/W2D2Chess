require 'colorize'
require_relative 'cursor.rb'
require_relative 'board.rb'

class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    @board.grid.each do |r|
      row = []
      r.each do |piece|
        if piece == row.first
          row << piece.to_s
        else
          row << piece.to_s
        end
      end
      puts row.join("")
    end
    @cursor.cursor_pos.colorize(:blue)

  end


end

if __FILE__==$PROGRAM_NAME
  b = Board.new
  d = Display.new(b)
  d.render
  b.grid
end
