class RandomPair
  def initialize(number = 0)
    @number = number.chomp.to_i
    @members = []
  end

  def input_member
    @number.times do 
      print '> '
      @members << gets.chomp
    end
  end

  def shuffle
    @members.shuffle!
  end

  def pick_pair
    puts "\e[H\e[2J" # console clear
    while @members.size > 0
      @members.size == 3 ? trio : pair
      sleep(2)
    end
  end

  private
  def pair
    p @members.shift(2).join(' <=> ')
  end

  def trio
    @members << @members.first
    p @members.shift(4).join(' => ')
  end
end

print 'please input number of people => '

random_pair = RandomPair.new(gets)

puts 'please input member name '
random_pair.input_member

random_pair.shuffle
random_pair.pick_pair