require_relative 'stepable'
require_relative 'piece'

class Knight < Piece
  include Stepable

  MOVES = [
    [2, 1],
    [1, 2],
    [-1, 2],
    [-2, 1],
    [-2, -1],
    [-1, -2],
    [1, -2],
    [2, -1]
  ]

  def initialize(color, board, pos)
    super
  end

  def symbol
    "\u2658".encode('utf-8')
  end

  def to_s
    " #{symbol} "
  end

end

# \u2654 ♔ WHITE CHESS KING
# \u2655 ♕ WHITE CHESS QUEEN
# \u2656 ♖ WHITE CHESS ROOK
# \u2657 ♗ WHITE CHESS BISHOP
# \u2658 ♘ WHITE CHESS KNIGHT
# \u2659 ♙ WHITE CHESS PAWN
# \u265A ♚ BLACK CHESS KING
# \u265B ♛ BLACK CHESS QUEEN
# \u265C ♜ BLACK CHESS ROOK
# \u265D ♝ BLACK CHESS BISHOP
# \u265E ♞ BLACK CHESS KNIGHT
# \u265F ♟ BLACK CHESS PAWN
