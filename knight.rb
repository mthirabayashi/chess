require_relative 'stepable'
require_relative 'piece'

class Knight < Piece
  include Stepable
  
  def initialize
  end

  def symbol
  end

  protected

  def move_diffs
  end

end
