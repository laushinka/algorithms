# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class SumOf3and5Multiples
  def numbers(start, endpoint)
    (start...endpoint).to_a.select { |num| num % 3 == 0 || num % 5 == 0 }
  end

  def sumOfMultiples(nums)
    nums.reduce(:+)
  end
end

n = SumOf3and5Multiples.new
num = n.numbers(1, 1000)
result = n.sumOfMultiples(num)

# class SumOf3and5Multiples
#   def initialize(start, endpoint)
#     @start = start
#     @endpoint = endpoint
#   end
#
#   def sum
#     total = 0
#     arr = (@start..@endpoint).select { |num| num % 3 == 0 || num % 5 == 0 }
#     arr.reduce(:+)
#   end
# end


# n = SumOf3and5Multiples.new
# num = n.numbers(1, 1000)
# result = n.sumOfMultiples(num)
# puts result
