require_relative 'cursor'
require_relative 'board'


class Display
  include Cursorable
  attr_reader :cursor

  def initialize()
    @notifications = Hash.new
  end

  def move(new_pos)
  end

  def render
  end
  
end
