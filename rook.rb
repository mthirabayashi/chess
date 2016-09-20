require_relative 'slideable'
require_relative 'piece'

class Rook < Piece
  include Slideable
  def initialize
  end

  def symbol
  end

  protected

  def move_dirs
  end

end
