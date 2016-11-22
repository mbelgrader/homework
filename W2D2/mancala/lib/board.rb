class Board
  attr_accessor :cups
  attr_reader :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { [] }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..12).each do |i|
      4.times { @cups[i] << :stone } unless i == 6
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 1 || start_pos > 12
  end

  def make_move(start_pos, current_player)
    stones = cups[start_pos].count
    @cups[start_pos] = []

    i = start_pos
    current_player == name1 ? skip = 13 : skip = 6

    until stones == 0
      (i == 5 && skip == 6) ? i += 2 : i += 1

      i = 0 if i == 13 && skip == 13
      i = 0 if i == 14 && skip == 6

      @cups[i] << :stone
      stones -= 1
    end

    render
    next_turn(i)
  end

  def one_side_empty?
    cups[0..5].flatten == [] || cups[7..12].flatten == []
  end

  def winner
    return :draw if cups[6] == cups[13]
    cups[6].count > cups[13].count ? name1 : name2
  end

  def cups_empty?
    cups.flatten == []
  end

  private

    def next_turn(ending_cup_idx)
      # helper method to determine what #make_move returns
      if ending_cup_idx == 6 || ending_cup_idx == 13
        return :prompt
      elsif cups[ending_cup_idx].count == 1
        return :switch
      else
        return ending_cup_idx
      end
    end

    def render
      print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
      puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
      print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
      puts ""
      puts ""
    end

end
