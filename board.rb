require_relative 'piece'
require 'byebug'
require_relative 'display.rb'
require_relative 'cursor.rb'
class Board
  attr_accessor :grid
  def initialize
    @grid = Array.new(8){Array.new(8)}

    i = 0
    while i < 2
      j = 0
      while j < 8
        self.grid[i][j] = Piece.new([i][j])
        j += 1
      end
      i += 1
    end

    ii = 6
    while ii < 8
      jj = 0
      while jj < 8
        self.grid[ii][jj] = Piece.new([ii][jj])
        jj += 1
      end
      ii += 1
    end


  end

  def move_piece(start_pos,end_pos)
    start_pos1 = start_pos[0]
    start_pos2 = start_pos[1]
    end_pos1 = end_pos[0]
    end_pos2 = end_pos[1]
    if self.grid[start_pos1][start_pos2].nil?
      raise ArgumentError.new "Start position is empty"
    end
    self.grid[end_pos1][end_pos2] = self.grid[start_pos1][start_pos2]
    self.grid[start_pos1][start_pos2] = nil

  end

  # def in_bounds?(diff)
  #   self.grid.include?(diff)
  # end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos,value)
    x,y = pos
    @grid[x][y] = value
  end



end
