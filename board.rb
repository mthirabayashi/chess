require_relative 'null_piece'
require_relative 'king'
require_relative 'knight'

class Board
  attr_reader :rows

  def initialize
    @null_piece = NullPiece.instance
    @rows = Array.new(8) {Array.new(8) {@null_piece}}
    populate_board
  end

  def populate_board
    @rows[0][3] = King.new(:white, self, [0,3])
    @rows[0][1] = Knight.new(:white, self, [0,1])
    @rows[0][6] = Knight.new(:white, self, [0,6])
  end

  def [](pos)
    x,y = pos
    @rows[x][y]
  end

  def []=(pos, piece)
    x,y = pos
    @rows[x][y] = piece
  end

  def dup

  end

  def move_piece(color, from_pos, to_pos)

  end

  def move_piece!(from_pos, to_pos)
    p from_pos
    p to_pos
    moved_piece = self[from_pos]

    if moved_piece == @null_piece || !moved_piece.valid_moves.include?(to_pos)
      raise "Invalid move, try again"
    else
      moved_piece.pos = to_pos

      self[to_pos], self[from_pos] = self[from_pos], self[to_pos]

      self[to_pos].pos = to_pos
    end
  end

  def in_bounds?(pos)
    x,y = pos
    x.between?(0,7) && y.between?(0,7)
  end

  def checkmate?

  end

  protected
  def make_starting_grid
  end

  def find_king(color)
  end
end
