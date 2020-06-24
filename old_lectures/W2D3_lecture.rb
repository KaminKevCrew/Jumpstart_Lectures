def two_d_sum(matrix)
  # sum = 0
  # matrix.each do |arr|
  #   arr.each do |num|
  #     sum += num
  #   end
  # end
  # return sum
  matrix.flatten.sum
end

matrix1 = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

# p two_d_sum(matrix1) # => 45



def pair_product(arr, target)
  product_arr = []
  arr.each.with_index do |el1, i1|
    arr.each.with_index do |el2, i2|
      if i1 < i2
        if el1 * el2 == target
          product_arr << [i1, i2]
        end
      end
    end
  end
  return product_arr
end





# p pair_product([1, 2, 3, 4, 5], 8) #=> [[1, 3]]







# Hashes

# nick_hash = {
#   "name" => "Nick Piper",
#   "age" => 18,
#   "chill?" => true,
#   "friends" => ["AJ", "Esperanto"],
#   9001 => "over"
# }




# p nick_hash["name"]


# declaring hashes, adding to hashes

# Two ways:
# new_hash = {}
# default_hash = Hash.new(0)

def most_letters(str)
  count_hash = {}

  str.each_char do |char|
    if count_hash[char] >= 0
      count_hash[char] += 1
    else 
      count_hash[char] = 1
    end
  end

  return count_hash.values.max
end

# p most_letters("Hello") #=> "2"

# access keys, make new keys, reassign keys,  increment values, delete keys

# access a key
# nick_hash["name"] # "Nick Piper"

# make new key
# nick_hash["social"] = ["Twitter", "Facebook", "Instagram"]

# increment / reassign keys
# nick_hash["age"] = 23
# nick_hash["age"] += 1


# length #=> length of hash
# has_key?("name"),  #=> returns boolean based on whether or hash has a given key
# has_value?, #=> same as has key, but on values
# keys, #=> returns array of all keys in hash
# values, #=> returns array of all values in hash

# each, #=> each_pair => |key, value|
# each_key, #=> |key|
# each_value #=> |value|

# default values, make default values

# variable_name = Hash.new("default_value")








# Write a method hash_to_array that takes a hash and converts it to an array of key value pairs in ARRAY form

def hash_to_array(hash)
  # create a new array (which we will return)
  arr = []
  #iterate over hash, shovel each key value pair into array
  hash.each do |key, value|
    arr << [key, value]
  end
  return arr
end

steve_hash = {
  "age" => 20,
  "chill_factor" => "high"
}

# p hash_to_array(steve_hash) #=> [["age", 20], ["chill_factor", "high"]]












# Write a method letter_count that takes in a string and returns a hash containing every included letter and how often they appear

def letter_count(str)
  arr = str.split('')
  my_hash = Hash.new(0)

  arr.each do |char|
    my_hash[char] += 1
  end
  return my_hash
end

# p letter_count("aaabbc") #=> {"a" => 3, "b" => 2, "c" => 1}
# p letter_count("daniel") #=> {"d"=>1, "a"=>1, "n"=>1, "i"=>1, "e"=>1, "l"=>1}
# p letter_count("App academy") #=> {"A"=>1, "p"=>2, " "=>1, "a"=>2, "c"=>1, "d"=>1, "e"=>1, "m"=>1, "y"=>1}











# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  frequent = string.split("")
  hash = Hash.new(0)
  arr = []

  frequent.each do |char|
    hash[char] += 1
  end
  hash.each do |key, value|
    if value > 2
      arr << key
    end
  end
  return arr
end

p frequent_letters('mississippi') #=> ["i", "s"]
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

