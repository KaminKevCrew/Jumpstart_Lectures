# Pair product with one loop and one hash - you can expect all unique numbers

def pair_product(arr, target)
  tested_hash = {} # key: num in arr, value: index of the number
  index_arr = []
  arr.each.with_index do |num, idx|
    compliment = target.to_f / num
    if tested_hash[compliment]
      index_arr << [tested_hash[compliment], idx]
    else
      tested_hash[num.to_f] = idx
    end
  end
  return index_arr
end

# p pair_product([1, 3, 5, 6, 4, 2, 12], 12) # [[1, 4], [3, 5], [0, 6]]
# p pair_product([1, 2, 3, 4, 5], 17) # []

# Advanced Enumerables!!

#map, #select

arr = [3, 45, 1, 5, 32, 43, 2 , 5, 7, 6, 100]

def square_terms(arr)
  # squared_arr = []
  # arr.each do |num|
  #   squared_arr << num ** 2
  # end
  # return squared_arr

  squared_arr = arr.map.with_index do |num, idx|
    num ** idx
  end
  return squared_arr
end

# p square_terms(arr)

def select_10_and_greater(arr)
  selected = arr.select do |ele|
    ele >= 10
  end
  return selected
end

# p select_10_and_greater(arr)

# Technical Interview Notes:

# Will be on HackerRank

# 3 questions total
# Instructions on left of page

# 1st question:
  # Probably Easiest; warm up
  # 15 minutes to solve
  # pair program with yourself
    # First decide on a game plan
    # If you ask your interviewer, you should be able to make comment about your game plan on the text editor
    # Interviewer will give the go ahead
    # code your solution
      # NOTE: you can't run your own code. 
    # Interviewer may ask what would happen if some part of your code was changed
      # You need to be able to answer and explain what would happen

# 2nd question:
  # same format as question
  # 15 minutes to solve
  # harder than question 1

# 3rd question:
  # hardest question
  # 15 minutes to solve
    # 7.5 minutes as navigator (navigate your interviewer)
    # 7.5 minutes as driver (navigated by the interviewer)
  # You don't necessarily need to solve it in the allotted time, but you should be well on your way to solving it.

def is_prime?(num)
  return false if num < 2

  i = 2
  while i < num
    return false if num % i == 0
    i += 1
  end
  return true
end

def all_primes_to(num)
  prime_arr = []
  i = 0
  while i <= num
    if is_prime?(i)
      prime_arr << i
    end
    i += 1
  end
  return prime_arr
end

p all_primes_to(23) # [2, 3, 5, 7, 11, 13, 17, 19, 23]