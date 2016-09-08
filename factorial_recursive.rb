def recursive_factorial(n)
  return n if n <= 1
  return n * recursive_factorial(n - 1)
end
