def two_d_sum(matrix)
  sum = 0
  # i = 0
  # while i < matrix.length
  #   j = 0
  #   while j < matrix[i].length
  #     sum += matrix[i][j]
  #     j += 1
  #   end
  #   i += 1
  # end
  # return sum
  matrix.each do |sub|
    sum += sub.sum
  end
  return sum
end

matrix1 = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

# p two_d_sum(matrix1) # => 45

# return all pairs of indexes that work
def pair_product(arr, target)
  i = 0
  while i < arr.length
    j = 0
    while j < arr.length
      if j > i
        if arr[i] * arr[j] == target
          return true
        end
      end
      j += 1
    end
    i += 1
  end
  return false
end

# p pair_product([3, 6, 9, 12, 18], 54) # true
# p pair_product([3, 6, 9, 12], 144) # false
# p pair_product([3], 9) # false


def all_words_in_dictionary(sent, dictionary)
  words = sent.split
  words.each do |word|
    if !dictionary.include?(word)
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

# p nick_hash.values
# hash.each do |key, val|, hash.each_key do |key|, each_value

# nick_hash.keys.each

# default values, make default values

# str = "Hello, world!"

# count_hash = Hash.new(0)

# str.each_char do |char|
#   count_hash[char] += 1
# end

# p count_hash

# count_hash = {}

# str.each_char do |char|
#   if count_hash[char]
#     count_hash[char] += 1
#   else
#     count_hash[char] = 1
#   end
# end

# p count_hash


# Write a method hash_to_array that takes a hash and converts it to an array of key value pairs in ARRAY form

def hash_to_array(hash)
  converted = []
  hash.each_pair do |key, value|
    converted << [key, value]
  end
  return converted
end

# p hash_to_array(nick_hash) #=> [["age", 20], ["chill_factor", "high"]]












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
  count_hash = Hash.new(0)
  frequent_arr = []
  string.each_char do |char|
    count_hash[char] += 1
  end
  count_hash.each_pair do |key, value|
    if value > 2
      frequent_arr << key
    end
  end
  return frequent_arr
end

# p frequent_letters('mississippi    is best!!!!!') #=> ["i", "s", " ", "!"]
# p frequent_letters('bootcamp') #=> []










# anagram returns boolean representing whether the letters in word1 can be rearranged to form word2

def anagram?(word1, word2)
  return count_hash(word1) == count_hash(word2)
end

def count_hash(str)
  count_hash = Hash.new(0)
  str.each_char do |char|
    count_hash[char] += 1
  end
  return count_hash
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



# return all pairs of indexes that work. 
# Hard challenge: Use *only* 1 loop, and *only* 1 hash
def pair_product(arr, target)
  
end

# p pair_product([3, 6, 9, 12, 18], 54) # [1, 2]
# p pair_product([3, 6, 9, 12], 144) # []
# p pair_product([3], 9) # []