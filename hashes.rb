def two_d_sum(matrix)
  # return matrix.flatten.sum # Super easy way
  sum = 0
  matrix.each do |sub|
    sub.each do |num|
      sum += num
    end
  end
  return sum
end

# matrix1 = [
#   [1,2,3],
#   [4,5,6],
#   [7,8,9]
# ]

# p two_d_sum(matrix1) # => 45

# return all pairs of indexes that work
# def pair_product(arr, target)
#   pairs_arr = []
#   i = 0
#   while i < arr.length - 1
#     j = i + 1
#     while j < arr.length
#       if arr[i] * arr[j] == target
#         pairs_arr << [i, j]
#       end
#       j += 1
#     end
#     i += 1
#   end
#   return pairs_arr
# end

# p pair_product([3, 6, 9, 12, 18], 54) # [[0, 4], [1, 2]]
# p pair_product([3, 6, 9, 12], 144) # []
# p pair_product([3], 9) # false


# def all_words_in_dictionary(sent, dictionary)
#   words = sent.split(' ')
#   words.each do |word|
#     return false if !dictionary.include?(word)
#   end
#   return true
# end

# p all_words_in_dictionary("I am talking", ["aardvark", "a", "I", "am", "talking"]) # true
# p all_words_in_dictionary("I am alsdkfjasldkfj", ["aardvark", "a", "I", "am", "talking"]) # false



# Hashes









# declaring hashes, adding to hashes

# Two ways:
# new_hash = {} # creates an empty hash
# default_hash = Hash.new(0) 




# access keys, make new keys, reassign keys,  increment values, delete keys

# access a key
# nick_hash["name"] # "Nick Piper"

# make new key
# nick_hash["social"] = ["Twitter", "Facebook", "Instagram"]

# increment / reassign keys
# nick_hash["age"] = 23
# nick_hash["age"] += 1


# length, # works the same as arrays
# has_key?, # like Array#include?, but for all keys
# has_value?, # like Array#include?, but for all values
# keys, # return an array of keys in a hash
# values, # return an array of values in a hash
nick_hash = {
  "name" => "Nick Piper",
  "age" => 18,
  "chill?" => true,
  "friends" => ["AJ", "Esperanto"],
  9001 => "over",
  "num_world_championships" => 7
}

# p nick_hash.has_key?("name") #=> true
# p nick_hash.has_value?(17) #=> false

# p nick_hash.values
# each, each_key, each_value

# nick_hash.each do |key, value| # each has alias of each_pair
#   p key
#   p value
# end

# nick_hash.keys.each

# default values, make default values

# some_hash = Hash.new(default_value)

# values_arr = hash.values 
# i = 0
# while i < values_arr.length
  # hash[values_arr[i]]
#   i += 1
# end





# Write a method hash_to_array that takes a hash and converts it to an array of key value pairs in ARRAY form

def hash_to_array(hash)
  # Using Enumerables
  # converted = []
  # hash.each_pair do |key, value|
  #   converted << [key, value]
  # end
  # return converted

  # Using While Loops
  # converted = []
  # keys = hash.keys
  # i = 0
  # while i < keys.length
  #   converted << [keys[i], hash[keys[i]]]
  #   i += 1
  # end
  # return converted
end

# p hash_to_array(nick_hash) #=> [["age", 20], ["chill_factor", "high"]]












# Write a method letter_count that takes in a string and returns a hash containing every included letter and how often they appear

def letter_count(str)
  # With default hash
  # counted_letters = Hash.new(0)
  # str.each_char do |char|
  #   counted_letters[char.downcase] += 1
  # end
  # return counted_letters

  # without default hash
  counted_letters = {}
  str.each_char do |char|
    if counted_letters.has_key?(char.downcase)
      counted_letters[char.downcase] += 1
    else
      counted_letters[char.downcase] = 1
    end
  end
  return counted_letters
end

# p letter_count("aaabbc")
# p letter_count("daniel")
# p letter_count("App academy")



# sum of odd, return arrays greater than target, return array of elements that start with letter e and are shorter than 6

# define a method that returns the sum of all odd numbers in arr

def sum_odd(arr)
  # sum var to keep track of current sum
  # loop through arr
  # check if the ele is odd or even
  # if odd, add to sum
  # else do nothing
  # return sum

  sum = 0
  # arr.each do |num|
  #   # sum += num if num.odd?
  #   if num % 2 == 1
  #     sum += num
  #   end
  # end
  i = 0
  while i < arr.length
    if arr[i] % 2 == 1
      sum += arr[i]
    end
    i += 1
  end
  return sum
end

# p sum_odd([1, 3, 5]) #=> 9
# p sum_odd([2, 4, 6]) #=> 0
# p sum_odd([2, 3, 4, 5, 6]) #=> 8


# define a method, big_eles that takes an array and a target, and return a new array containing all values greater than or equal to the target.

def big_eles(arr, target)
  # new array variable
  # loop through array 
  # compare each ele in arr to target
  # if greater than or equal target, add to new array
  # return new array

  big_arr = []
  arr.each do |num|
    if num >= target
      big_arr << num
    end
  end
  return big_arr

  # return arr.select {|num| num >= target}
end

# p big_eles([1, 2, 3], 4) #=> []
# p big_eles([7, 8, 9], 7) #=> [7, 8, 9]
# p big_eles([1, 2, 9, 8, 19], 6) #=> [9, 8, 19]

# define a method, fivv_buzz that takes in a string, and returns an array containing only the words that begin with e, and are shorter than 6 characters.

def fivv_buzz(str)
  # array of desired words
  # split string into words (only needed if taking in a string, skip for array.)
  # iterate over words, check that the word starts with e AND is shorter than 6 characters.
  buzzed_words = []
  words = str.split(' ')
  words.each do |word|
    if 'eE'.include?(word[0]) && word.length < 6 
      # (word[0] == 'e' || word[0] == 'E') && word.length < 6
      buzzed_words << word
    end
  end
  return buzzed_words
end

# p fivv_buzz("each word here is evaluative") #=> ["each"]
# p fivv_buzz("eloquent evolution is exceptional") #=> []



# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

# def frequent_letters(string)
  
# end

# p frequent_letters('mississippi    is best!!!!!') #=> ["i", "s"]
# p frequent_letters('bootcamp') #=> []










# anagram returns boolean representing whether the letters in word1 can be rearranged to form word2

# def anagram?(word1, word2)
# end


# p anagram?("teacher", "cheater") # => true
# p anagram?("desert", "dessert") # => false











# takes integer and converts to roman numeral string

# def int_to_roman(num)
#   roman_hash = {
#     "M" => 1000,
#     "CM" => 900,
#     "D" => 500,
#     "CD" => 400,
#     "C" => 100,
#     "XC" => 90,
#     "L" => 50,
#     "XL" => 40,
#     "X" => 10,
#     "IX" => 9,
#     "V" => 5,
#     "IV" => 4,
#     "I" => 1
#   }
# end




# puts int_to_roman(5) #=> "V"
# puts int_to_roman(1764) #=> "MDCCLXIV"
# puts int_to_roman(999) #=> "CMXCIX"

