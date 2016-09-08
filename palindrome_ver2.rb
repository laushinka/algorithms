# Know what to pass in to the recursive method each time
# Go through each character pair
# Call isEqual every time
# Base case is when a and b are not the same
def isEqual(string)
  if string.length < 2
    return false
  else
    if string[0] == string[-1]
      isEqual(string[1..(string.length-2)])
    else
      return false
    end
  end
  return true
end
