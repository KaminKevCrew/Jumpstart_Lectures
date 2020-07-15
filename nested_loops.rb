# Homework

# arr = [1, 2, 3, 4, 5]

# sum = 0

# arr.each.with_index do |num, idx|
#   p idx
#   sum += num
# end

# p sum

def to_initials(name)
  names = name.split(' ')
  initials = ''
  names.each do |word|
    initials += word[0].upcase
  end
  return initials
end

# p to_initials("john travolta") # => "JT"
# p to_initials("Andrew J Gosling") # => "AJG"

def format_name(name)
  names = name.split(' ')
  formatted = ''
  names.each do |word|
    formatted += word[0].upcase + word[1..-1].downcase + ' '
  end
  return formatted[0...-1]
end

# p format_name("john travolta") # => "John Travolta"
# p format_name("aVaTAR aANG") # => "Avatar Aang"
# p format_name("ANDREW J GOSLING") # => "Andrew J Gosling"

# an email is valid if it contains exactly 1 "@" symbol, only alphabetic lowercase letters before the @ symbol, and exactly one "." after the @ symbol


def is_valid_email?(str)
  parts = str.split('@')
  return false if parts.length != 2

  alpha = ("a".."z")

  parts[0].each_char do |char|
    if !alpha.include?(char)
      return false
    end
  end
  
  return parts[1].split('.').length == 2
end

# p is_valid_email?("abc@xy.z")         # => true
# p is_valid_email?("jdoe@gmail.com")   # => true
# p is_valid_email?("jdoe@g@mail.com")  # => false
# p is_valid_email?("jdoe42@gmail.com") # => false
# p is_valid_email?("jdoegmail.com")    # => false
# p is_valid_email?("az@email")         # => false














# Week 2 Day 2 - Nested Loops and 2D Arrays

# two_d_array = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

# p two_d_array[0][0] # => [1, 2, 3][0] => 1
# p two_d_array[1][2] # => [4, 5, 6][2] => 6
# p two_d_array[2][0]

















three_d_array = [
  ["Daenerys", "Jon"],
  ["Tyrion", "Tywin"],
  ["Jaime", "Cersei"],
  ["Bran", "Arya"],
  ["Rick", "Morty"]
]

# p three_d_array[4][1] # => ["Rick", "Morty"][1] => "Morty"
# p three_d_array[0][0][0] # => "Daenerys"[0] => "D"



def count_a(big_ol_arr)
  count = 0
  big_ol_arr.each do |sub| # slow loop
    sub.each do |string| # medium loop
      string.each_char do |char| # fast loop
        count += 1 if "aA".include?(char)
      end
    end
  end
  return count
end

# p count_a(three_d_array) # 5








# nested loops

# two_d_array = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

# two_d_array.each do |sub_arr|
#   sub_arr.each do |num|
#     p num
#   end
# end

# accomplish same functionality with while loop?

# i = 0
# while i < two_d_array.length
#   j = 0
#   while j < two_d_array[i].length
#     p two_d_array[i][j]
#     j += 1
#   end
#   i += 1
# end







# what would happen if j was outside while loop?













def possible_pairs(arr)
  pairs = []
  arr.each.with_index do |num1, idx1|
    arr.each.with_index do |num2, idx2|
      if idx2 > idx1
        pairs << [num1, num2]
      end
    end
  end
  return pairs
end

# p possible_pairs([1, 2, 3]) #[[1, 2], [1, 3], [2, 3]]
# p possible_pairs([4, 5, 6, 7]) #[[4, 5], [4, 6], [4, 7], [5, 6], [5, 7], [6, 7]]











# Problems!!!

# takes in an array and returns all unique pairs

# def possible_uniq_pairs(arr)
# end

# p possible_uniq_pairs([1, 2, 3]) # => [[1, 2], [1, 3], [2, 3]]

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

# def nested_sum(matrix)
# end

# my_matrix = [
#   [1, 2],
#   [3, 4]
# ]

# p nested_sum(my_matrix) # => 10








# Define a method, #pair_product?, that accepts two arguments: an array of
# integers and a target_product (an integer). The method returns a boolean
# indicating whether any pair of elements in the array multiplied together equals
# that product. You cannot multiply an element by itself. An element on its
# own is not a product.
# pair_product?([3, 1, 5, 6, 7], 15) => true because 3*5 == 15

# def pair_product?(arr, target_product)
# end


# p pair_product?([3, 1, 6], 15) # => false
# p pair_product?([3, 1, 6], 9) # => false
# p pair_product?([3, 1, 6], 18) # => true





# given a string, return all possible substrings

# def substrings(str)
# end

# p substring("abc")








# given a string, return the longest substring that is the same forwards and backwards (minimum length 3)

# def longest_palindrome(str)
# end

# p longest_palindrome("abracadabra") # => "aca"
# p longest_palindrome("i sleep in a racecar bed") # => " racecar "






# given a gap, return the the first pair of contiguous primes with that gap between them

# primes: 2, 3, 5, 7, 11, 13, 17, 19, 23, 29...

# def prime_gap(gap)
# end

# p prime_gap(2) # => [3, 5]
# p prime_gap(4) # => [7, 11]
# p prime_gap(6) # => [23, 29]
# p prime_gap(24) # => ?????????????
