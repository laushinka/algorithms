# The following iterative sequence is defined for the set of positive integers:

# Given a number n in the Collatz sequence,
# if n is even, the next number in the sequence is n/2
# if n is odd, the next number in the sequence is 3n + 1

# Applying the rule above with the starting number 13, we generate the following sequence:

# 13 40 20 10 5 16 8 4 2 1 It can be seen that this sequence (starting at 13 and
# finishing at 1) contains 10 terms. Although it has not been proved yet
# (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

class Collatz
  attr_reader :longest_num, :longest_length, :chains

  def initialize(max)

    @longest_num = 0
    @longest_length = 0
    @chains = {}
    @max = max
  end

  # By definition, the length of the chain for THIS number is 1 + the
  # length of the chain for the NEXT number. So, we recursively
  # calculate the lengths for each number in the chain, remembering
  # which number had the longest chain, AND the length of the chain,
  # ignoring any numbers over max.

  def longest_chain(num)
    puts "calculating #{num}"
    return chains[num] if chains[num]
    if num == 1
      chains[num] = 1
    else
      if num % 2 == 0
        longest_chain(num/2) + 1
      else
        chains[num] = longest_chain((num*3) + 1) + 1
      end
    end

    if chains[num] > @longest_length
      @longest_num = num
      @longest_length = chains[num]
    end

    if num <= @max
      puts "result #{num} = #{chains[num]}"
    end
    chains[num]
  end
end # Collatz

max = 5

start_time = Time.now
collatz = Collatz.new(max)

max.downto(2) do |num|
  collatz.length(num)
end

puts "Number with longest chain is #{collatz.longest_num()}"
puts "Length of longest chain is   #{collatz.longest_length()}"
puts "Time taken                   #{Time.now - start_time}"
