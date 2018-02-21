
class TowersOfHanoi

  attr_accessor :towers

  def initialize(towers = [[3, 2, 1], [], []])
    @towers = towers
  end

  def play
    until won?
      puts "Pick a start tower and an end tower. i.e. 0,2"
      input = gets.chomp.split(",").map(&:to_i)
      self.move(input[0], input[1])
    end

  end

  def move(start, end_tower)
    if valid_play?(start, end_tower)
      first = @towers[start].pop
      @towers[end_tower].push(first)
    end
    @towers
  end

  def valid_play?(start,end_tower)
    raise "tower is empty!" if @towers[start].empty?
    return true if @towers[end_tower].empty?
    return false if @towers[start].last > @towers[end_tower].last
    true
  end

  def won?
    @towers[1] == [3, 2, 1] || @towers[2] == [3, 2, 1]
  end

end
