# 1. Go through each element
# 2. Add each element with the next one
n-1 + n
[1, 4, 6, 3]
# Write out an example - at least three elements
#   Say the solution in terms of itself

def add_up_all_elements_of(arr)
  if array.length > 1
    add_up_all_elements_of(arr.slice(0, array.length-1)) + array.last
  else
    array.first
  end
end

def sum_up_to(n)
  if n > 1
    sum_up_to(n-1) + n
  else
    1
  end
end


puts (add_up_all_elements_of([1, 2, 3]) == 6)
