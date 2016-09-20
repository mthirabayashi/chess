require_relative 'slideable'
require_relative 'piece'

class Rook < Piece
  include Slideable

  MOVES = [
    [0, -1],
    [-1,0],
    [0, 1],
    [1,0]
  ]

  def initialize(color, board, pos)
    super
  end

  def symbol
    return "\u2656".encode('utf-8') if color == :white
    "\u265C".encode('utf-8')
  end

  def to_s
    " #{symbol} "
  end

  protected

  # def move_dirs
  # end

end
