# Review
# def two_d_sum(matrix)
#     sum = 0
#     matrix.each do |sub_arr|
#         sub_arr.each do |num|
#             sum += num
#         end
#     end
#     return sum
#     # return matrix.flatten.sum
# end
# matrix1 = [
#   [1,2,3],
#   [4,5,6],
#   [7,8,9,10,11]
# ]
# p two_d_sum(matrix1) # => 66
# given an array and a target product, return an array of all the indices of pairs
# of elements that multiply together to hit the product
# provide each pair of indices only once, and pairs must be different indices
# def pair_product(arr, target)
#     pairs_arr = []
#     arr.each_with_index do |el1, idx1|
#         arr.each_with_index do |el2, idx2|
#             if idx2 > idx1 # [2, 0]
#                 if el1 * el2 == target
#                     pairs_arr << [idx1, idx2]
#                 end
#             end
#         end
#     end
#     return pairs_arr
# end
# p pair_product([3, 6, 9, 12, 18], 54) # [[0, 4], [1, 2]]
# p pair_product([2, 1, 2, 4], 8) # [[0, 3], [2, 3]]
# p pair_product([3, 6, 9, 12], 144) # []
# p pair_product([3], 9) # []
# Hashes
# Two ways:
# new_hash = {}
# new_hash["a"] = 5
# new_hash["b"] = 7
# p new_hash["a"]
nick_hash = {
  "name" => "Nick Piper",
  "age" => 18,
  "chill?" => true,
  "friends" => ["AJ", "Esperanto"],
  9001 => "over",
  "num_world_championships" => 7,
  "social" => {
      "facebook" => "nickpiper@gmail"
  }
}
# access keys, make new keys, reassign keys,  increment values, delete keys
# access a key
# p nick_hash["name"] # "Nick Piper"
# make new key
nick_hash["social"] = ["Twitter", "Facebook", "Instagram"]
# increment / reassign keys
nick_hash["age"] = 23
nick_hash["age"] += 1 #=> nick_hash["age"] = nick_hash["age"] + 1
# length, has_key?, has_value?, keys, values,
nick_hash.length #=> 8 (?)
nick_hash.has_key?("name") #=> true
nick_hash.has_value?(18) #=> false
# p nick_hash.keys
# p nick_hash.values
# each == each_pair, each_key, each_value
# nick_hash.each do |key, val|
#   p "The key is #{key}, and the value is #{val}"
# end
# default values, make default values
kevin_bikes = Hash.new(0)

bikes = ["look 585", "fuji sportif"]

bikes.each do |bike|
  kevin_bikes["bike_count"] += 1
  kevin_bikes[bike] += 1
end

# p kevin_bikes
# Write a method hash_to_array that takes a hash and converts it to an array of key value pairs in ARRAY form
def hash_to_array(hash)
  arr_form = []
  hash.each_pair do |key, value|
    arr_form << [key, value]
  end
  return arr_form
end
# p hash_to_array(kevin_bikes) #=> [["age", 20], ["chill_factor", "high"]]
# Write a method letter_count that takes in a string and returns a hash containing every included letter and how often they appear
def letter_count(str)
  count_hash = Hash.new(0)
  # count_hash = {}
  str.each_char do |char|
    count_hash[char] += 1
    # if count_hash[char].nil?
    #   count_hash[char] = 1
    # else
    #   count_hash[char] += 1
    # end
  end
  return count_hash
end
# p letter_count("aaabbc")
# p letter_count("daniel")
# p letter_count("App academy")
# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.
def frequent_letters(string)
  count_hash = Hash.new(0)
  string.each_char do |char|
    count_hash[char] += 1
  end
  # Now we have a hash with all the letters and how many times they showed up.
  alpha = ("a".."z")
  frequent_arr = []
  count_hash.each_pair do |key, val|
    if val > 2 && alpha.include?(key.downcase)
      frequent_arr << key
    end
  end
  return frequent_arr
end
# p frequent_letters('mississippi    is best!!!!!') #=> ["i", "s"]
# p frequent_letters('bootcamp') #=> []
# anagram returns boolean representing whether the letters in word1 can be rearranged to form word2
def anagram?(word1, word2)
  
end
p anagram?("teacher", "cheater") # => true
p anagram?("desert", "dessert") # => false
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
