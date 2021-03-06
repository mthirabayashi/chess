require_relative 'slideable'
require_relative 'piece'

class Queen < Piece
  include Slideable

  MOVES = [
    [-1, -1],
    [-1, 1],
    [1, 1],
    [1, -1],
    [0, -1],
    [-1,0],
    [0, 1],
    [1,0]
  ]

  def initialize(color, board, pos)
    super
  end

  def symbol
    return "\u2655".encode('utf-8') if color == :white
    "\u265B".encode('utf-8')
  end

  def to_s
    " #{symbol} "
  end

  protected

  # def move_dirs
  # end

end
