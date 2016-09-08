# 1. For each element, subtract with another element
# 2. If result is bigger than the last, the it becomes the biggest current diff
def greatestDiff(arr)
  sort(arr)
  result = arr[-1] - arr[0]
end

# array = [1, 2, 3, -4, -3] => -2
def total_negative_integers(array)
  if array.length > 0

    total_negative_integers(array.shift)
    # if array.shift < 0
    #   counter += 1
    else
      counter
    end
    # total_negative_integers(array[1..-1])
  end
end
