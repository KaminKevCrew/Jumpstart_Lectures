# Homework


# write a method longest_pause(string) that takes a string and counts the
# longest “ummmm”. For example:
# longest_pause(“ummmmmmm”) => 8
def longest_pause(sentence)
  # split by space to capture each word
  # check if work is a valid um
  # check if each um is longer than previous um's - if it is, update longest
  # return longest

  longest_um = '' # starts with length 0
  words = sentence.split(' ')
  words.each do |word|
    if word.length > longest_um.length
      if valid_um?(word)
        longest_um = word
      end
    end
  end
  return longest_um.length
end

def valid_um?(string)
  # returns true if string starts with 'u' and has only 'm' after
  if string[0].downcase == 'u'
    string[1..-1].each_char do |char|
      if char != 'm'
        return false
      end
    end
    return true
  end
  return false
end

# p longest_pause("ummmmmmm")
# p longest_pause("Hi there, I’m um here for the interview")
# p longest_pause("um I’m uum not sure.")
# p longest_pause("ummmmm, I’m umm not sure.")

















# Week 2 Day 2 - Nested Loops and 2D Arrays

two_d_array = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

# p two_d_array[0][0] # => [1, 2, 3][0] => 1
# p two_d_array[1][2] # => [4, 5, 6][2] => 6
# p two_d_array[2][0]


# idx1 = 0 
# while idx1 < two_d_array.length
#   idx2 = 0 #=> 3
#   while idx2 < two_d_array[idx1].length
#     p two_d_array[idx1][idx2]
#     idx2 += 1
#   end
#   idx1 += 1
# end


# two_d_array.each do |sub|
#   sub.each do |num|
#     p num
#   end
# end











three_d_array = [
  ["Daenerys", "Jon"], #=> ['J', 'o', 'n']
  ["Tyrion", "Tywin"],
  ["Jaime", "Cersei"],
  ["Bran", "Arya"],
  ["Rick", "Morty"]
]

# p three_d_array[4][1] # => ["Rick", "Morty"][1] => "Morty"
# p three_d_array[0][0][0] # => "Daenerys"[0] => "D"



def count_a(arr)
  # count = 0
  # idx1 = 0
  # while idx1 < arr.length
  #   idx2 = 0
  #   while idx2 < arr[idx1].length
  #     idx3 = 0
  #     while idx3 < arr[idx1][idx2].length
  #       if arr[idx1][idx2][idx3].downcase == 'a'
  #         count += 1
  #       end
  #       idx3 += 1
  #     end
  #     idx2 += 1
  #   end
  #   idx1 += 1
  # end
  # return count

  count = 0
  arr.each do |sub|
    sub.each do |string|
      string.each_char do |char|
        if char.downcase == 'a' #=> 'Aa'.include?(char)
          count += 1
        end
      end
    end
  end
  return count
end

# p count_a(three_d_array) # => 5








# nested loops

# two_d_array = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

# two_d_array.each do |sub_arr|
# end

# accomplish same functionality with while loop?









# what would happen if j was outside while loop?













def possible_pairs(arr)
  pairs_arr = []
  arr.each do |num1|
    arr.each do |num2|
        pairs_arr << [num1, num2]
    end
  end
  return pairs_arr
end

# p possible_pairs([1, 2, 3])
# p possible_pairs([4, 5, 6, 7])











# Problems!!!

# takes in an array and returns all unique pairs

def possible_uniq_pairs(arr)
  pairs_arr = []

  arr.each.with_index do |num1, idx1| # Slow loop
    arr.each.with_index do |num2, idx2| # Fast loop
      if idx2 > idx1
        pairs_arr << [num1, num2]
      end
    end
  end
  return pairs_arr
end

# p possible_uniq_pairs([1, 2, 3]) # => [[1, 2], [1, 3], [2, 3]]

# Slow loop iteration 0 => idx1 = 0
  # Fast loop iteration 0 => idx2 = 0
    # idx2 > idx1 => false => won't shovel
  # Fast loop iteration 1 => idx2 = 1 => [1, 2]
    # idx2 > idx1 == true => will shovel
  # Fast loop iteration 2 => idx2 = 2 => [1, 3]
    # idx2 > idx1 == true => will shovel
# Slow loop iteration 0 => idx1 = 1
  # Fast loop iteration 3 => idx2 = 0
    # idx2 > idx1 => false => won't shovel => [2, 1]
  # Fast loop iteration 4 => idx2 = 1
    # idx2 > idx1 => false => won't shovel => [2, 2]
  # Fast loop iteration 5 => idx2 = 2
    # idx2 > idx1 == true => will shovel => [2, 3]
# Slow loop iteration 0 => idx1 = 2
  # Fast loop iteration 6 => idx2 = 0
  # Fast loop iteration 7 => idx2 = 1
  # Fast loop iteration 8 => idx2 = 2

# p possible_uniq_pairs([4, 5, 6, 7]) # => 
# [
#   [4, 5],
#   [4, 6],
#   [4, 7],
#   [5, 6],
#   [5, 7],
#   [6, 7]
# ]








# Define a method, #nested_sum, that takes a 2d_array and returns the sum of all nested elements

def nested_sum(matrix)
  sum = 0
  matrix.each do |sub|
    sub.each do |num|
      sum += num
    end
  end
  return sum
end

my_matrix = [
  [1, 2],
  [3, 4]
]

# p nested_sum(my_matrix) # => 10








# Define a method, #pair_product?, that accepts two arguments: an array of
# integers and a target_product (an integer). The method returns a boolean
# indicating whether any pair of elements in the array multiplied together equals
# that product. You cannot multiply an element by itself. An element on its
# own is not a product.
# pair_product?([3, 1, 5, 6, 7], 15) => true because 3*5 == 15

def pair_product?(arr, target_product)
  # Nested loop
  arr.each_with_index do |el1, idx1|
    arr.each_with_index do |el2, idx2| 
      if idx2 > idx1
        if el1 * el2 == target_product
          return true
        # else # will return false the first time, every time. (unless the first pair is the correct one)
          # return false
        end
      end
    end
  end
  return false
end


# p pair_product?([3, 1, 6], 15) # => false
# p pair_product?([3, 1, 6], 9) # => false
# p pair_product?([3, 1, 6], 18) # => true





# given a string, return all possible substrings

def substrings(str)
  subs = []
  str.each_char.with_index do |_, idx1|
    str.each_char.with_index do |_, idx2|
      if idx2 >= idx1
        subs << str[idx1..idx2]
      end
    end
  end
  return subs
end

# p substrings("abc")








# given a string, return the longest substring that is the same forwards and backwards (minimum length 3)

# def longest_palindrome(str)
# end

# p longest_palindrome("abracadabra") # => "aca"
# p longest_palindrome("i sleep in a racecar bed") # => " racecar "


# Define a method, is_prime? that takes an integer and returns a boolean indicating whther or not that number is prime.

def is_prime?(num)

end

# p is_prime?(11) #=> true
# p is_prime?(8) #=> false



# given a gap, return the the first pair of contiguous primes with that gap between them

# primes: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29...

# def prime_gap(gap)
# end

# p prime_gap(2) # => [3, 5]
# p prime_gap(4) # => [7, 11]
# p prime_gap(6) # => [23, 29]
# p prime_gap(24) # => ?????????????