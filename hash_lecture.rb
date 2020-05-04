def two_d_sum(matrix)
  sum = 0
  matrix.each do |sub|
    # two options; 
    # 1. loop through and add each element to sum
    # sub.each do |num|
    #   sum += num
    # end
    # 2. call the Array#sum method, and add that total to sum.
    # sum += sub.sum
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
  good_pairs = []
  arr.each.with_index do |num1, idx1|
    arr.each.with_index do |num2, idx2|
      if idx2 > idx1 && num1 * num2 == target
        good_pairs << [num1, num2]
      end
    end
  end
  return good_pairs
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

# class Human
#   def initialize(name, height, age, hair_color)
#     @name = name
#     @height = height
#     @age = age
#     @hair_color = hair_color
#   end

#   def speak
#     p "I am #{@name}, hear me roar! ROOROROROROROR"
#   end
# end

# new_human = Human.new("kevin", "real tall", 18, "magnificent")

# new_human.speak








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

# p nick_hash["age"]

# p nick_hash.values # also a Hash#keys method

# each, each_key, each_value

# nick_hash.each do |key, value|
#   p "the key is #{key}, the value is #{nick_hash[key]}"
# end

# nick_hash.keys.each

# default values, make default values

# count_hash = {} # Hash.new(0)

# string = "Aj is awesome, and he's totally killing it!"

# string.each_char do |char|
#   if !count_hash[char]
#     count_hash[char] = 1
#   else
#     count_hash[char] += 1
#   end
# end

# p count_hash

# arr[idx] = value => reassign value at idx
# hash[key] = value => reassign value at key






# Write a method hash_to_array that takes a hash and converts it to an array of key value pairs in ARRAY form

def hash_to_array(hash)
  # shape: [[key1, val1], [key2, val2], ...]
  paired_arr = []
  hash.each do |key, val|
    paired_arr << [key, val]
  end
  return paired_arr
end

# p hash_to_array(nick_hash) #=> [["age", 20], ["chill_factor", "high"]]












# Write a method letter_count that takes in a string and returns a hash containing every included letter and how often they appear

def letter_count(str)
  count_hash = Hash.new(0)
  str.each_char do |char|
    count_hash[char.downcase] += 1
  end
  return count_hash
end

# p letter_count("aaabbc")
# p letter_count("daniel")
# p letter_count("App academy")



# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  count_hash = letter_count(string)
  frequent_arr = []
  count_hash.each do |key_char, val|
    if val > 2
      frequent_arr << key_char
    end
  end
  return frequent_arr
end

# p frequent_letters('mississippi    is best!!!!!') #=> ["i", "s"]
# p frequent_letters('bootcamp') #=> []



# anagram returns boolean representing whether the letters in word1 can be rearranged to form word2

def anagram?(word1, word2)
  # return letter_count(word1) == letter_count(word2) #=> Super easy way (do this)

  word1_hash = letter_count(word1)
  word2_hash = letter_count(word2)

  # make sure that for every key in word1 hash that word2 hash has the same key and value.

  word1_hash.each do |key, val|
    if val != word2_hash[key]
      return false
    end
  end
  return word1_hash.keys.length == word2_hash.keys.length
end


# p anagram?("teacher", "cheater") # => true
# p anagram?("desert", "dessert") # => false






# Write a method rational_repeats that accepts a string and a hash as arguments. The method should return a new string where characters of the original string are repeated the number of times specified by the hash. If a character does not exist as a key in the hash, then it should remain unchanged.
# Examples:

def rational_repeats(string, hash)
  final_str = ""

  string.each_char do |char|
    # hash["t"] => nil
    # nil.times => error
    if hash.keys.include?(char) #=> hash[char] => hash.hash_key?(char)
      # The hash must have contained char
      hash[char].times do 
        final_str += char
      end
    else 
      final_str << char
    end
  end
  return final_str
end


# p rational_repeats('taco', {'a'=>3, 'c'=>2}) # 'taaacco'
# p rational_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rational_repeats('misispi', {'s'=>2, 'p'=>2}) # 'mississppi'
# p rational_repeats('faarm', {'e'=>3, 'a'=>2}) # 'faaaarm'

# Write a method sneaky_sentence that accepts a sentence and a hash as arguments. The method should return a new sentence where every word is replaced with its corresponding value in the hash. If a word does not exist as a key of the hash, then it should remain unchanged.
# Examples:

def sneaky_sentence(sentence, hash)
  words = sentence.split(' ')
  sneaky_arr = []
  words.each do |word|
    if hash.keys.include?(word)
      sneaky_arr << hash[word]
    else
      sneaky_arr << word
    end
  end
  return sneaky_arr.join(' ')
end

# p sneaky_sentence('anything you can do I can do', {'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'}) 
# # 'nothing you shall drink I shall drink'
# p sneaky_sentence('what a sad ad', {'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'}) 
# # 'make a happy ad'
# p sneaky_sentence('keep coding okay', {'coding'=>'running', 'kay'=>'pen'}) 
# # 'keep running okay'