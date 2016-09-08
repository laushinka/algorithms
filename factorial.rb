# 5! =5 * 4 * 3 * 2 * 1

def factorial(n)
  f = 1 # Number of decrement
  while n > 0
    f *= n
    n -= 1
  end
  f
end
