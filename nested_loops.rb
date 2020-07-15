# Homework

arr = [1, 2, 3, 4, 5]

sum = 0

arr.each.with_index do |num, idx|
  p idx
  sum += num
end

p sum

# def to_initials(name)
# end

# p to_initials("john travolta") # => "JT"
# p to_initials("Andrew J Gosling") # => "AJG"

# def format_name(name)
# end

# p format_name("john travolta") # => "John Travolta"
# p format_name("aVaTAR aANG") # => "Avatar Aang"
# p format_name("ANDREW J GOSLING") # => "Andrew J Gosling"

# an email is valid if it contains exactly 1 "@" symbol, only alphabetic lowercase letters before the @ symbol, and exactly one "." after the @ symbol


# def is_valid_email?(str)
  
# end

# p is_valid_email?("abc@xy.z")         # => true
# p is_valid_email?("jdoe@gmail.com")   # => false
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
  ["Bran", "Arya"]
]

# p three_d_array[4][1] # => ["Rick", "Morty"][1] => "Morty"
# p three_d_array[0][0][0] # => "Daenerys"[0] => "D"



# def count_a(big_ol_arr)
  
  
# end

# count_a(three_d_array)








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













# def possible_pairs(arr)
# end

# print possible_pairs([1, 2, 3])




# p possible_pairs([ 4, 5, 6, 7])











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
