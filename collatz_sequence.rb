  # The following iterative sequence is defined for the set of positive integers:

  # Given a number n in the Collatz sequence,
  # if n is even, the next number in the sequence is n/2
  # if n is odd, the next number in the sequence is 3n + 1

  # Applying the rule above with the starting number 13, we generate the following sequence:

  # 13 40 20 10 5 16 8 4 2 1 It can be seen that this sequence (starting at 13 and
  # finishing at 1) contains 10 terms. Although it has not been proved yet
  # (Collatz Problem), it is thought that all starting numbers finish at 1.

  # Which starting number, under one million, produces the longest chain?
#
class Collatz
  attr_accessor :starting_num, :maximum_num
  @@chains = {}
  def initialize(starting_num, maximum_num)
    @starting_num = starting_num
    @maximum_num = maximum_num
    @@chains[starting_num] = self.longest_chain
  end

  def collatz_sequence(num)
    while num > 1
      if num % 2 == 0
        @@chains[num] = num/2
        puts @@chains
      elsif num % 2 != 0
        @@chains[num] = ((num*3) + 1)/2
        puts @@chains
      end
    end
    puts @@chains[num]
  end

  def longest_chain
    start_time = Time.now
    longest = 0
    starting_num = 0
    (1...maximum_num).each do |num|
      result = collatz_sequence(num)
      # puts starting_num if num % 1000 == 0
      if result > longest
        puts result
        longest = result
        starting_num = num
      end
    end
    puts "Starting number is #{starting_num}" #837799
    puts "Length of longest chain is #{longest}" #525
    puts "Time taken: #{Time.now - start_time}"
  end
end

num = Collatz.new(1, 100)
num.longest_chain
# Starting number is 837799
# Length of longest chain is 525
