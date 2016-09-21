require_relative 'piece'

require 'byebug'

module Slideable

  def possible_moves
    possible_moves = []

    move_dirs.each do |diff|
      # p diff
      possible_moves += grow_unblocked_moves_in_dir(diff[0], diff[1])
    end

    # p "ALL possible: #{possible_moves}"
    possible_moves
  end

  private

  def move_dirs
    self.class::MOVES
  end

  # def horizontal_dirs
  # end
  #
  # def diagonal_dirs
  # end

  def grow_unblocked_moves_in_dir(dx, dy)
    # debugger
    temp_pos = self.pos
    all_positions = []

    temp_pos = [temp_pos[0] + dx, temp_pos[1] + dy]

    while self.board.in_bounds?(temp_pos)
      if self.board[temp_pos].class != NullPiece
        if self.color != self.board[temp_pos].color
          all_positions << temp_pos
          break
        elsif self.color
          break
        end
      end
      all_positions << temp_pos
      temp_pos = [temp_pos[0] + dx, temp_pos[1] + dy]
    end

    # p "all_positions: #{all_positions}"
    all_positions
  end

end
