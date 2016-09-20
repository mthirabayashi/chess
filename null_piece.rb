require 'singleton'

class NullPiece
  include Singleton

  def moves

  end

  def color

  end

  def to_s
    " |  "
    #rely on color instance variable
  end

  def empty?

  end
end
