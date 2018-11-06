# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  x = 0
  if arr.empty?
    x
  else
    arr.each do |n|
      x = x + n
    end
    return x
  end
end

def max_2_sum arr
  #Para un array de un solo elemento devolver el elemento
  if arr.length == 1
    return arr[0]
  end

  #Devuelve la suma de sus dos numeros mayores
  if arr.empty?
    0
  else
    arr.sort!
    m1 = arr.pop
    m2 = arr.pop
    return m1 + m2
  end

  #Para un array vacio debería de devolver 0
  x = 0
  if arr.empty?
    x
  else
    arr.each do |i|
      x = x + i
    end
    return x
  end
end

def sum_to_n? arr, n
  if arr.size == 0
    false
  else
    if arr.size == 1
      false
    else
      return true if arr.empty? && n.zero?
      arr.combination(2).any? {|a, b| a + b == n }
    end
  end
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
