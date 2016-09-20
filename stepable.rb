require_relative 'piece'

module Stepable

  def possible_moves
    possible_moves = []
    move_diffs.each do |diff|
      move = [self.pos[0]+diff.first, self.pos[1]+diff.last]
      possible_moves << move
    end
    possible_moves
  end

  private

  def move_diffs
    self.class::MOVES
  end

end
