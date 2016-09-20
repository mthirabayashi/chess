require_relative 'slideable'
require_relative 'piece'

class Bishop < Piece
  include Slideable

  MOVES = [
    [-1, -1],
    [-1, 1],
    [1, 1],
    [1, -1]
  ]

  def initialize(color, board, pos)
    super
  end

  def symbol
    return "\u2657".encode('utf-8') if color == :white
    "\u265D".encode('utf-8')
  end

  def to_s
    " #{symbol} "
  end

  protected

  # def move_dirs
  # end

end
