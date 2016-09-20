class Piece
  attr_accessor :pos
  attr_reader :color, :board

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
  end

  def empty?
  end

  def symbol
  end

  def valid_moves
    possible_moves
  end

  private

  def move_into_check?(to_pos)
  end

end
