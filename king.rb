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

  def initialize
    super
  end

  def symbol
    " K "
  end


end
