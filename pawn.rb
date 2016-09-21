require_relative 'piece'
class Pawn < Piece

  MOVES = [
    []
  ]

  def initialize(color, board, pos)
    super
  end

  def symbol
    return "\u2659".encode('utf-8') if color == :white
    "\u265F".encode('utf-8')
  end

  def to_s
    " #{symbol} "
  end

  def possible_moves
    forward_steps + side_attacks
  end

  protected

  def at_start_row?
    if color == :white
      return true if pos[0] == 1
    elsif color == :black
      return true if pos[0] == 6
    end
    false
  end

  def forward_dir
    color == :white ? 1 : -1
  end

  def forward_steps
    forward_steps = []
    if at_start_row? && @board[[@pos[0]+forward_dir, @pos[1]]].class==NullPiece && @board[[@pos[0]+(2*forward_dir), @pos[1]]].class==NullPiece
      puts "returns"
      forward_steps << [@pos[0] + (forward_dir * 2), @pos[1]]
    end
    if @board[[@pos[0]+forward_dir, @pos[1]]].class==NullPiece
      puts "returns"
      forward_steps << [@pos[0] + forward_dir, @pos[1]]
    end

    forward_steps
  end

  def side_attacks
    side_attacks = []
    if @board[[@pos[0]+forward_dir, @pos[1]-1 ]].class!=NullPiece
      side_attacks << @board[[@pos[0]+forward_dir, @pos[1]-1 ]] unless @color==@board[[@pos[0]+forward_dir, @pos[1]-1 ]].color
    end
    if @board[[@pos[0]+forward_dir, @pos[1]+1 ]].class!=NullPiece
      side_attacks << @board[[@pos[0]+forward_dir, @pos[1]+1 ]] unless @color==@board[[@pos[0]+forward_dir, @pos[1]+1 ]].color
    end
    puts "possible side attacks: #{side_attacks}"
    side_attacks
  end
end
#
# def possible_moves
#   possible_moves = []
#   move_diffs.each do |diff|
#     move = [self.pos[0]+diff.first, self.pos[1]+diff.last]
#     possible_moves << move
#   end
#   possible_moves
# end
#
# private
#
# def move_diffs
#   self.class::MOVES
# end
#
# end

# MOVES = [
#   [0, -1],
#   [-1,-1],
#   [-1,0],
#   [1, 1],
#   [0, 1],
#   [1, -1],
#   [1,0],
#   [-1,1]
# ]


# \u2654 ♔ WHITE CHESS KING
# \u2655 ♕ WHITE CHESS QUEEN
# \u2656 ♖ WHITE CHESS ROOK
# \u2657 ♗ WHITE CHESS BISHOP
# \u2658 ♘ WHITE CHESS KNIGHT
# \u2659 ♙ WHITE CHESS PAWN
# \u265A ♚ BLACK CHESS KING
# \u265B ♛ BLACK CHESS QUEEN
# \u265C ♜ BLACK CHESS ROOK
# \u265D ♝ BLACK CHESS BISHOP
# \u265E ♞ BLACK CHESS KNIGHT
# \u265F ♟ BLACK CHESS PAWN
