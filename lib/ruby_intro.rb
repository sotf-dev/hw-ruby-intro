# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  x = 0
  if arr.empty?
    return 0
  else
    arr.each do |n|
      x = x + n
  end
  return x
end
end

def max_2_sum arr
  # YOUR CODE HERE
  #Para un array array de un solo elemento devolver el elemento
  if arr.length == 1
    return arr[0]
  end
  #Devuelve la suma de sus dos numeros mayores
  arr.sort!
  m1= arr.pop
  m2= arr.pop
  return m1 + m2
  #Para un array vacio debería de devolver 0
  x = 0
  if arr.empty?
    return 0
  else
    arr.each do |i|
      x = x + i
    end
  return x
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
