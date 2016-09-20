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
  end

  def to_s
    ' n '
  end

end
