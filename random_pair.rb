class RandomPair
  def initialize(number = 0)
    @number = number.chomp.to_i
    @members = []
  end

  def input_member
    @number.times do 
      @members << gets.chomp
    end
  end
end

print 'please input number of people => '

shuffle_pair = RandomPair.new(gets)

puts 'please input member'
shuffle_pair.input_member