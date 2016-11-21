require 'byebug'
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message unless game_over
    @sequence_length += 1
  end

  def show_sequence
    system('clear')
    puts "Get ready..."
    sleep(2)
    add_random_color

    seq.each do |color|
      system('clear')
      puts color
      sleep(1)
      system('clear')
      sleep(1)
    end
  end

  def require_sequence
    puts "Enter your guess: Ex. blue green red yellow"
    guess = gets.chomp.downcase.split
    @game_over = true if guess != seq
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "You are correct!"
  end

  def game_over_message
    puts "Try again"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end
