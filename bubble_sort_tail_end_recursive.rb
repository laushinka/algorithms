def recursive_bub_sort(input)
  sorted = true
  (input.length - 1).times do |i|
    if input[i] > input[i + 1]
      input[i], input[i + 1] = input[i + 1], input[i]
      sorted = false
    end
  end
  return recursive_bub_sort(input) unless sorted
  input
end
