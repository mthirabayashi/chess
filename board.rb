class Board
  attr_reader :rows

  def initialize
    null_piece = NullPiece.instance
    @rows = Array.new(8) {Array.new(8) {null_piece}}
  end

  def [](pos)

  end

  def []=(pos, piece)

  end

  def dup

  end

  def move_piece(color, from_pos, to_pos)

  end

  def move_piece!(from_pos, to_pos)

  end

  def checkmate?

  end

  protected
  def make_starting_grid
  end

  def find_king(color)
  end
end
