class Piece

attr_accessor :piece
  def initialize(position)
    @piece = 1
    @position = position
  end

  def to_s
    "#{@piece}"
  end

end
