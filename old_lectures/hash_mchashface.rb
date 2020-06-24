def two_d_sum(matrix)
  # sum = 0
  # matrix.each do |sub|
  # #   sub.each do |num|
  # #     sum += num
  # #   end
  # sum += sub.sum
  # end
  # return sum
  return matrix.flatten.sum
end

# matrix1 = [
#   [1,2,3],
#   [4,5,6],
#   [7,8,9]
# ]

# p two_d_sum(matrix1) # => 45

# return all pairs of indexes that work
# return true is there is a pair of indices that work, false otherwise
def pair_product(arr, target)
  pairs = []
  i = 0
  while i < arr.length
    j = 0
    while j < arr.length
      if j > i
        if arr[i] * arr[j] == target
          pairs << [i, j]
        end
      end
      j += 1
    end
    i += 1
  end
  return pairs
end

# p pair_product([3, 6, 9, 12, 18], 54) # true
# p pair_product([3, 6, 9, 12], 144) # false
# p pair_product([3], 9) # false


def all_words_in_dictionary(sent, dictionary)
  words = sent.split(' ')
  words.each do |word|
    exists = false
    # if !dictionary.include?(word)
    #   return false
    # end
    dictionary.each do |word_def|
      if word == word_def
        exists = true
      end
    end
    if !exists
      return false
    end
  end
  return true
end

# p all_words_in_dictionary("I am talking", ["aardvark", "a", "I", "am", "talking"]) # true
# p all_words_in_dictionary("I am alsdkfjasldkfj", ["aardvark", "a", "I", "am", "talking"]) # false


# Hashes









# declaring hashes, adding to hashes

# Two ways:
# new_hash = {}
# default_hash = Hash.new(0)



# access keys, make new keys, reassign keys,  increment values, delete keys

# access a key
# nick_hash["name"] # "Nick Piper"

# make new key
# nick_hash["social"] = ["Twitter", "Facebook", "Instagram"]

# increment / reassign keys
# nick_hash["age"] = 23
# nick_hash["age"] += 1


# length, has_key?, has_value?, keys, values,
nick_hash = {
  "name" => "Nick Piper",
  "age" => 18,
  "chill?" => true,
  "friends" => ["AJ", "Esperanto"],
  9001 => "over",
  "num_world_championships" => 7
}

# p nick_hash.has_key?("friends")
# each, each_key, each_value

# nick_hash.each do |key, val|
#   p "The key is #{key} the value #{val}"
# end

# nick_hash.keys.each

# default values, make default values

# default_hash = Hash.new("Woah")

# str = "Hello, world!"

# str.each_char do |char|
#   default_hash[char] *= 2
# end

# p default_hash






# Write a method hash_to_array that takes a hash and converts it to an array of key value pairs in ARRAY form

def hash_to_array(hash)
  arr = []
  hash.each_pair do |k, v|
    arr << [k, v]
  end
  return arr
end

# p hash_to_array(nick_hash)












# Write a method letter_count that takes in a string and returns a hash containing every included letter and how often they appear

def letter_count(str)
  count_hash = Hash.new(0)
  str.each_char do |char|
    count_hash[char] += 1
  end
  return count_hash
end

# p letter_count("aaabbc")
# p letter_count("daniel")
# p letter_count("App academy")


# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  letter_counts = letter_count(string) #=> returns as a hash of letter counts
  repeats = []
  letter_counts.each_pair do |letter, count|
    if count > 2
      repeats << letter
    end
  end
  return repeats
end

# p frequent_letters('mississippi is best') #=> ["i", "s"]
# p frequent_letters('bootcamp') #=> []










# anagram returns boolean representing whether the letters in word1 can be rearranged to form word2

def anagram?(word1, word2)
  # return letter_count(word1) == letter_count(word2)
  # return word1.split('').sort == word2.split('').sort
  word1_counts = letter_count(word1)
  word2_counts = letter_count(word2)

  word1_counts.each_pair do |letter1, count1|
    if word2_counts[letter1] != count1
      return false
    end
  end
  return word1.length == word2.length
end


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