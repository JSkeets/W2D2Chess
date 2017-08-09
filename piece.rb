require_relative 'cursor.rb'
class Piece

attr_accessor :piece, :position, :cursor
  def initialize(position)
    @piece = 1
    @position = position
    @cursor = cursor
  end

  def to_s
    "#{@piece}"
  end

  def moves
    [[0,1], [1,0], [-1, 0], [0, -1], [1,-1], [-1,1] [1,1], [-1,-1]]
  end

end

class NullPiece < Piece
  def initialize(position)
    @position = position
    @piece = "_"
  end
end

class King < Piece
  def moves
    [[0,1], [1,0], [-1, 0], [0, -1], [1,-1], [-1,1] [1,1], [-1,-1]]
  end

end

class Pawn < Piece


end
