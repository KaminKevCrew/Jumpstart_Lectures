# Homework

# arr = [1, 2, 3, 4, 5]

# sum = 0

# arr.each.with_index do |num, idx|
#   p idx
#   sum += num
# end

# p sum

# def to_initials(name)
  # Two ways to approach this problem:
  # Way 1
  # iterate over the whole name, and grab ever character that follows
  # a space.

  # initials = name[0]
  # name.each_char.with_index do |char, idx|
  #   if char == ' '
  #     initials << name[idx + 1]
  #   end
  # end
  # return initials.upcase

  # Way 2
  # split the name on a space
  # iterate over each single name
  # grab the first letter from each of those
  # return the initials.

  # initials = ''
  # names = name.split(' ')
  # names.each do |named|
  #   initials << named[0]
  # end
  # return initials.upcase
# end

# p to_initials("john travolta") # => "JT"
# p to_initials("Andrew J Gosling") # => "AJG"

# def format_name(name)
#   # split on a space
#   # first character => upcased
#   # all other characters => downcased
#   formatted = []
#   words = name.split(' ')
#   words.each do |word|
#     formatted << word[0].upcase + word[1..-1].downcase
#   end
#   return formatted.join(' ')
# end

# p format_name("john travolta") # => "John Travolta"
# p format_name("aVaTAR aANG") # => "Avatar Aang"
# p format_name("ANDREW J GOSLING") # => "Andrew J Gosling"

# an email is valid if it contains exactly 1 "@" symbol, only alphabetic lowercase letters before the @ symbol, and exactly one "." after the @ symbol


# def is_valid_email?(str)
#   name_and_site = str.split('@')
#   return false if name_and_site.length != 2
#   return false if name_and_site[0] != name_and_site[0].downcase

#   alpha = ('a'..'z')
#   name_and_site[0].each_char do |char|
#     return false if !alpha.include?(char)
#   end

#   return name_and_site[1].split('.').length == 2
# end

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
# p two_d_array[2][0] #=> [7, 8, 9][0] => 7

















# three_d_array = [
#   ["Daenerys", "Jon"],
#   ["Tyrion", "Tywin"],
#   ["Jaime", "Cersei"],
#   ["Bran", "Arya"],
#   ["Rick", "Morty"]
# ]

# p three_d_array[4][1] # => ["Rick", "Morty"][1] => "Morty"
# p three_d_array[0][0][0] # => "Daenerys"[0] => "D"



# def count_a(big_ol_arr)
#   count = 0
#   big_ol_arr.each do |sub| #=> looking at all sub arrays #=> Slow Loop
#     sub.each do |word| #=> looking at names in each sub array #=> Mid-speed Loop
#       word.each_char do |char| #=> looking at chars in each word #=> Fast Loop
#         if char == 'a' || char == 'A' #=> 'aA'.include?(char)
#           count += 1
#         end
#       end
#     end
#   end
#   return count
# end

# p count_a(three_d_array) #=> 5








# nested loops

# two_d_array = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

# two_d_array.each do |sub_arr| #=> slow loop
#   sub_arr.each do |num| #=> fast loop
#     p num
#   end
# end

# accomplish same functionality with while loop?

# slow_idx = 0
# while slow_idx < two_d_array.length
#   fast_idx = 0
#   while fast_idx < two_d_array[slow_idx].length #=> checking length of sub array
#     p two_d_array[slow_idx][fast_idx]
#     fast_idx += 1
#   end
#   slow_idx += 1
# end







# what would happen if fast_idx was outside while loop?













def possible_pairs(arr)
  # think of [1, 2] and [2, 1] as different
  # pairs = []
  # i = 0
  # while i < arr.length
  #   j = 0
  #   while j < arr.length
  #     pairs << [arr[i], arr[j]]
  #     j += 1
  #   end
  #   i += 1
  # end
  # return pairs


  # think of [1, 2] and [2, 1] as the same thing (only include one of them)
  pairs = []
  i = 0 # we could set i to arr.length - 1
  while i < arr.length
    j = 0 # we could always set j to i + 1
    while j < arr.length
      if j > i
        pairs << [arr[i], arr[j]]
      end
      j += 1
    end
    i += 1
  end
  return pairs
end

# p possible_pairs([1, 2, 3])




# p possible_pairs([4, 5, 6, 7])











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
