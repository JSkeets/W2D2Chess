require 'colorize'
require_relative 'cursor.rb'
require_relative 'board.rb'
require 'byebug'
class Display
 attr_accessor :cursor
  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    # system("clear")
    @board.grid.each do |r|

      row = []
      r.each do |col|
        if col.position == self.cursor.cursor_pos

          row << col.to_s.colorize(background: :yellow)
        else
          row << col.to_s
        end
      end
      puts row.join("")
    end
  end

  def play
    self.render
    self.cursor.get_input

    if @cursor.first != nil && @cursor.second != nil
      if @board[@cursor.first].moves.include?(movediff)
      @board.move_piece(@cursor.first, @cursor.second)

      @cursor.first = nil
      @cursor.second = nil
    end
    end


  end

  def movediff
    ans = []


    ans <<  @cursor.first[0]
    ans << (@cursor.second[1] - @cursor.first[1])

    p ans
  end


end
