def two_d_sum(matrix)
  # iterate through each element in the matrix, then each element I select

  # nest two each loops
  total = 0
  matrix.each do |sub|
    sub.each do |num|
      total += num
    end
  end
  return total
end

matrix1 = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

# p two_d_sum(matrix1) # => 45

# return all pairs of indexes that work
# def pair_product(arr, target)

# end

# # p pair_product([3, 6, 9, 12, 18], 54) # true
# # p pair_product([3, 6, 9, 12], 144) # false
# # p pair_product([3], 9) # false

# Write a method array_translate that takes in an array whose elements alternate between words and numbers. The method should return a string where each word is repeated the number of times that immediately follows in the array.

def array_translate(array)
  # can be done in a single loop
  # grab two elements at a time, using a while loop
  # add string to the return string the specified number of times
  translated_str = ""
  i = 0
  while i < array.length
    str = array[i]
    num = array[i + 1]
    num.times do |useless|
      translated_str += str
    end
    # translated_str += str * num #<= also works (in Ruby)
    i += 2
  end
  return translated_str
end

# p array_translate(["dog", 2, "cat", 3, "mouse", 1]) #=> "dogdogcatcatcatmouse"

def my_include?(dict, query)
  dict.each do |valid_word|
    if valid_word == query
      return true
    end
  end
  return false
end

def all_words_in_dictionary(sent, dictionary)
  words = sent.split(" ")
  words.each do |word|
    if !my_include?(dictionary, word)
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



# access values, make new keys, reassign keys,  increment values, delete keys

nick_hash = {
  "name" => "Nick Piper",
  "age" => 18,
  "chill?" => true,
  "friends" => ["AJ", "Esperanto"],
  9001 => "over",
  "num_world_championships" => 7
}

# access a value
# p nick_hash["name"] # "Nick Piper"

# make new key/value pair
# p nick_hash
# nick_hash["social"] = ["Twitter", "Facebook", "Instagram"]
# p nick_hash

# increment / reassign keys
# nick_hash["age"] = 23
# nick_hash["age"] += 1

# p nick_hash["age"]


# length, has_key?, has_value?, keys, values,
# p nick_hash.length #=> checks number of key/value pairs
# p nick_hash.has_key?("age") #=> checks for a key in a hash alias for include?
# p nick_hash.has_value?(true) #=> checks for a value in a hash
# p nick_hash.keys #=> returns an array of all keys
# p nick_hash.values #=> returns an array of all values



# p nick_hash.values
# each, each_key, each_value
# each_key will loop through the array generated from hash.keys using each
# each_value does the same as each_key, but for values

# nick_hash.each do |k, v|
#   p "the key is #{k} and the value is #{v}"
# end

# nick_hash.keys.each

# default values, make default values


# Element Replace
# Write a method element_replace that takes in an array and a hash. The method
# should return a new array where elements of the original array are replaced with their
# corresponding values in the hash.

def element_replace(arr, hash)
  # iterate over array
  # grab each ele and key into hash with that ele
  # put corresponding val in new arr
  replaced = []

  arr.each do |el|
    if hash.has_key?(el)
      replaced << hash[el]
    else
      replaced << el
    end
  end

  return replaced
end

# arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
# hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
# p element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
# arr2 = ["dog", "cat", "mouse"]
# hash2 = {"dog"=>"bark", "cat"=>"meow", "duck"=>"quack"}
# p element_replace(arr2, hash2) # => ["bark", "meow", "mouse"]







# Write a method hash_to_array that takes a hash and converts it to an array of key value pairs in ARRAY form

def hash_to_array(hash)
  hashed = []
  hash.each do |k, v|
    hashed << [k, v]
  end
  return hashed
end

# p hash_to_array(nick_hash) #=> [["name", "Nick Piper"], ["age", 18], ["chill?", true], ["friends", ["AJ", "Esperanto"]], [9001, "over"], ["num_world_championships", 7]]












# Write a method letter_count that takes in a string and returns a hash containing every included letter and how often they appear

def letter_count(str)
  counts = Hash.new(0)
  str.each_char do |char|
    counts[char.downcase] += 1
  end
  return counts
end

# p letter_count("aaabbc") #=> {"a" => 3, "b" => 2, "c" => 1}
# p letter_count("daniel") #=> {"d"=>1, "a"=>1, "n"=>1, "i"=>1, "e"=>1, "l"=>1
# p letter_count("App academy") #=> {"a"=>3, "p"=>2, " "=>1, "c"=>1, "d"=>1, "e"=>1, "m"=>1, "y"=>1}










# Write a method frequent_letters that takes in a string and returns an array containing the letters that appeared more than twice in the string.

def frequent_letters(string)
  # use a default val of 0 for a frequency counting hash
  # iterate through string, populate the freq hash
  # iterate over freq hash
    # keep all keys that have a val greater than 2
  # 'mississippi    is best!!!!!'
  letters = Hash.new(0) #=> {"m" => 1, "i" => 5, "s" => 5, " " => 5, "t" => 1, "!" => 5}
  alphabet = ("a".."z").to_a

  string.each_char do |char|
    if alphabet.include?(char)
      letters[char] += 1
    end
  end

  frequent = []

  letters.each do |k, v|
    if v > 2
      frequent << k
    end
  end

  return frequent
end

p frequent_letters('mississippi    is best!!!!!') #=> ["i", "s"]
p frequent_letters('bootcamp') #=> []










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

