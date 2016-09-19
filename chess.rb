require_relative 'board'
require_relative 'display'


class Chess
  attr_reader :current_player, :board

  # @current_player = [:white, :black]

  def initialize(board, display)
    @board = board
    @display = display
  end

  def play
    # begin
    #   # current player - move_piece
    # rescue StandardError => e
    #   puts "#{e.message}"
    #   retry
    # end
    while true
      @display.handle_input

    end
  end

  private

  def notify_players

  end

  def saw_turn!

  end
end

if __FILE__ == $PROGRAM_NAME
  board = Board.new()
  display = Display.new(board)
  game = Chess.new(board, display)
  game.play

  # display.render
end
