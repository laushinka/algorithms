def merge_sort(array)
 #if we have a subarray with a length of one
 # we stop splitting. This is our base case.
 return array if array.length <= 1
 # Middle is the index of the middle of our array.
 middle = array.length / 2
 # We enter the algorithm recursively each time with a smaller and smaller array
 # until we eventually hit the base case where array has a length of one.
 left = merge_sort(array[0...middle]) #0 to not including middle
 right = merge_sort(array[middle..-1]) # middle index to last index
 # merge will combine the left and right subarrays together, into a sorted array
 merge(left, right)
end


def merge(left, right)
 result = []
 #until left arrray is empty or right array is empty
 until left.empty? || right.empty?
   #if the first element of left is smaller than or equal
   #to the first element of right
   if left[0] <= right[0]
     #we remove the first element from the left array
     #and append it into result
     result << left.shift
   else
     #otherwise, we remove the first element from the right array
     #and append it into result
     result << right.shift
   end
 end
 # we append the last elemnent (biggest value) into result
 result= result + left + right
end

# 1. Set a midpoint
# 2. Divide the left part
# 3. Divide the right part
# 4. Call the merge method
def divide(arr)
  if arr.length <= 1
    arr
  else
    mid = (arr.length/2).floor # Return a simple round down
    left = divide(arr[0..mid-1]) # Divide up to the mid point
    right = divide(arr[mid..arr.length]) # Divide from the mid point
    merge_sort(left, right) # Pass in args to merge_sort
  end
end

# 1. If left is empty, return right
# 2. If right is empty, return left
# 3. If left is smaller, call merge sort on the rest of left and right, and concat left side
def merge_sort(left, right)
  if left.empty? # If left side is empty, return the value of the right
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    # Keep performing merge sort on the rest of the left and right arrays
    [left.first] + merge_sort(left[1..left.length], right)
  else
    [right.first] + merge_sort(left, right[1..right.length])
  end
end

###########################
# Merge smaller element
# 1. Take two array arguments
# 2. Declare an empty array for the new result
# 3. Until left or right are empty
# 5. Push the smaller element into the result array
# 6. When loop ends, concat everything, in case one is empty before others

def merge(left, right)
  result = []
  until left.length == 0 || right.length == 0 do
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end

# merge_sort
# 1. Take one array argument
# 2. Set base case -> if array.length <= 1
# 3. Divide the array into left and right
# 4. Call merge and recursively merge_sort on the left right

def merge_sort(array)
  return array if array.length == 1
  middle = array.length / 2
  merge merge_sort(array[0...middle]), merge_sort(array[middle..-1])
end
