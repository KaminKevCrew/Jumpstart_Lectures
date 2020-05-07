def two_d_sum(matrix)
  sum = 0
  matrix.each do |sub|
    sub.each do |num|
      sum += num
    end
  end
  return sum
end

matrix1 = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

# p two_d_sum(matrix1) # => 45

# return whether or not a pair multiplies to target
def pair_product(arr, target)
  arr.each.with_index do |num1, idx1|
    arr.each.with_index do |num2, idx2|
      if idx2 > idx1
        if num1 * num2 == target
          return true
        end
      end
    end
  end
  return false
end

# p pair_product([3, 6, 9, 12, 18], 54) # true
# p pair_product([3, 6, 9, 12], 144) # false
# p pair_product([3], 9) # false


def all_words_in_dictionary(sent, dictionary)
  words = sent.split(' ')
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

nick_hash = {
  "name" => "Nick Piper",
  "age" => 18,
  "chill?" => true,
  "friends" => ["AJ", "Esperanto"],
  9001 => "over",
  "num_world_championships" => 7
}

# declaring hashes, adding to hashes

# Two ways:
# new_hash = {}
# default_hash = Hash.new(0)



# access keys, make new keys, reassign keys,  increment values, delete keys

# access a key
# p nick_hash["name"] # "Nick Piper"

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
# each, each_key, each_value
# nick_hash.each_key.with_index do |key, idx|
#   p "The index is #{idx}"
# end

# nick_hash.keys.each

# default values, make default values


some_hash = Hash.new(0)

some_hash["something"] += 1

# p some_hash



# Write a method hash_to_array that takes a hash and converts it to an array of key value pairs in ARRAY form

def hash_to_array(hash)
  tuple = []
  hash.each do |key, value|
    tuple << [key, value]
  end
  return tuple
end

# p hash_to_array(nick_hash) #=> [["age", 20], ["chill_factor", "high"]]












# Write a method letter_count that takes in a string and returns a hash containing every included letter and how often they appear

def letter_count(str)
  # count_hash = Hash.new(0)
  # str.each_char do |char|
  #   count_hash[char.downcase] += 1
  # end
  # return count_hash

  count_hash = {}
  str.each_char do |char|
    if count_hash[char]
      count_hash[char.downcase] += 1
    else
      count_hash[char.downcase] = 1
    end
  end
  return count_hash
end

# p letter_count("aaabbc")
# p letter_count("daniel")
# p letter_count("App academy")











# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  count_hash = Hash.new(0)
  multiples_arr = []

  string.each_char do |char| # counts occurences of each char
    count_hash[char] += 1
  end

  # return count_hash

  count_hash.each do |key, value|
    if value > 2
      multiples_arr << key
    end
  end

  return multiples_arr
end

# p frequent_letters('mississippi is best!') #=> ["i", "s"]
# p frequent_letters('bootcamp') #=> []










# anagram returns boolean representing whether the letters in word1 can be rearranged to form word2

def anagram?(word1, word2)
  # return false if word1.length != word2.length
  # word1_count = Hash.new(0)
  # word2_count = Hash.new(0)

  # word1.each_char do |char|
  #   word1_count[char] += 1
  # end

  # word2.each_char do |char|
  #   word2_count[char] += 1
  # end

  # if word1_count.length == word2_count.length
  #   word1_count.each do |key, value|
  #     if word1_count[key] != word2_count[key]
  #       return false
  #     end
  #   end
  # end

  # return true
  return letter_count(word1) == letter_count(word2)
end


# p anagram?("teacher", "cheater") # => true
# p anagram?("desert", "dessert") # => false