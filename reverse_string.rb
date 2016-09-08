def reverse(string)
  return string if string.length < 1
  reverse(string[1..-1]) + string[0]
end
