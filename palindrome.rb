# Add each character from the last to the first
def isPalindrome?(string)
  reversedString = ""
  for character in string.split("").reverse
    reversedString << character
  end
  reversedString.split(" ").join == string.split(" ").join
end
