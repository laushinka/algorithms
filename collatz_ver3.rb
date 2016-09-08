class CollatzSequence
  def initialize(starting_num, maximum_num)
    @starting_num = starting_num
    @maximum_num = maximum_num
    @lengths = {}
  end

  def chain_length(starting_num)
    len = @lengths[starting_num]

    if !len
      if num == 1
        len = 1
      else
        len = 1 + length((num % 2 == 0) ? (num/2) : (num * 3) + 1)
      end

      @lengths[num] = len

      # notify the observer we calculated a length
      @maximum_num.notify(num, len)
    end

    len
  end

end # Collatz

class LongestChain
  attr_reader :number, :length

  def initialize(max)
    @max = max
    @number = 0
    @length = 0
  end

  def notify(num, len)
    if num <= @max && len > @length
      @number = num
      @length = len
    end
  end
end

max = 999
start_time = Time.now
longest = LongestChain.new(max)
collatz = CollatzSequence.new(longest)

2.upto(max) do |num|
  collatz = CollatzSequence.new(num)
  collatz.chain_length
end

puts "Number with longest chain is #{longest.number()}"
puts "Length of longest chain is   #{longest.length()}"
puts "Time taken                   #{Time.now - start_time}"
