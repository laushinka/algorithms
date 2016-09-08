# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...

def fibonacci(n)
  return n if n <= 1
  return fibonacci(n - 1) + fibonacci(n - 2) # Next value after n
end

fibonacci(7)
6 -> fibonacci(5) + fibonacci(4) # 8
5 -> fibonacci(4) + fibonacci(3) # 5
4 -> fibonacci(3) + fibonacci(2) # 3
3 -> fibonacci(2) + fibonacci(1) # 2
2 -> fibonacci(1) + fibonacci(0) # 1
1 -> fibonacci(1)                # 1
