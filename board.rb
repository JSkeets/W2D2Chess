require_relative 'piece'
require 'byebug'
require_relative 'display.rb'
require_relative 'cursor.rb'
class Board
  attr_accessor :grid ,:first, :display
  def initialize
    @grid = Array.new(8){Array.new(8)}

    i = 0
    while i < 2
      j = 0
      while j < 8
        self.grid[i][j] = Piece.new([i,j])
        j += 1
      end
      i += 1
    end

    ii = 6
    while ii < 8
      jj = 0
      while jj < 8
        self.grid[ii][jj] = Piece.new([ii, jj])
        jj += 1
      end
      ii += 1
    end

    iii = 2
    while iii < 6
      jjj = 0
      while jjj < 8
        self.grid[iii][jjj] = NullPiece.new([iii, jjj])
        jjj += 1
      end
      iii += 1
    end


  end

  def move_piece(start_pos, end_pos)

    start_pos1 = start_pos[0]
    start_pos2 = start_pos[1]
    end_pos1 = end_pos[0]
    end_pos2 = end_pos[1]
    if self.grid[start_pos1][start_pos2].class == NullPiece
      raise ArgumentError.new "Start position is empty"
    # elsif true
    #   @display.movediff
    #   p "lk;wn;klnefklbefnkl"
    end


    end_holder = self.grid[end_pos1][end_pos2]
    end_holder_pos = self.grid[end_pos1][end_pos2].position


    # These two swap the piece object
    self.grid[end_pos1][end_pos2] = self.grid[start_pos1][start_pos2]
    self.grid[start_pos1][start_pos2] = end_holder

    #These two swap position attribute of piece object
    self.grid[end_pos1][end_pos2].position = end_holder_pos
    self.grid[start_pos1][start_pos2].position = start_pos

  end


  def in_bounds?(diff)
    if  diff[0] < 0 ||  diff[0] > 7
      return false
    elsif diff[1] <0 || diff[1] > 7
      return false
    end
    true
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos,value)
    x,y = pos
    @grid[x][y] = value
  end



end
