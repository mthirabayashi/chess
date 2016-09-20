require_relative 'stepable'
require_relative 'piece'

class King < Piece
  include Stepable

  MOVES = [
    [0, -1],
    [-1,-1],
    [-1,0],
    [1, 1],
    [0, 1],
    [1, -1],
    [1,0],
    [-1,1]
  ]

  def initialize(color, board, pos)
    super
  end

  def symbol
    " K "
  end

  def to_s
    " K "
  end

end
