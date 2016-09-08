# Non-recursive bubble sort:
# 1. Go through each index
# 2. If arr[index] is bigger than arr[index+1] -> arr[index], arr[index+1] = arr[index+1], arr[index]

def bubble_sort(input)
  while true
    sorted = true
    (input.length - 1).times do |i|
      if input[i] > input[i + 1]
        input[i], input[i + 1] = input[i + 1], input[i]
        sorted = false
      end
    end
    break if sorted
  end
  input
end
