require_relative 'cursor'
require_relative 'board'
require 'colorize'


class Display
  attr_reader :cursor

  def initialize(board)
    @board = board
    @notifications = Hash.new
    @cursor = Cursorable.new([4,4], @board)
  end

  def move(new_pos)
  end

  def render
    @board.rows.each_with_index do |row, idx1|
      row_string = ""
      row.each_with_index do |piece, idx2|
        if [idx1, idx2] == @cursor.cursor_pos
          row_string += piece.to_s.colorize(:background => :red)
        else
          if (idx1+idx2) % 2 == 0
            row_string += piece.to_s.colorize(:color => piece.color, :background => :green)
          else
            row_string += piece.to_s.colorize(:color => piece.color, :background => :light_blue)
          end
        end

        # "#{piece.to_s}"
      end
      puts row_string
    end
  end

  def handle_input
    # system "clear"
    puts
    render
    @cursor.get_input
    # current_cursor_pos = @cursor.cursor_pos
  end

end
