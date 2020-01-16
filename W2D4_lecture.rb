#Today we are going to talk about:
# - Homework Problems 
#     word_lengths, 
#     frequent_letters, 
#     unique_elements, 
#     element_replace
# - Advanced Enumerables
#     .map
#     .select

################################################################################

# Write a method word_lengths that takes in a sentence string and returns a
# hash where every key is a word of the sentence, and its' corresponding value
# is the length of that word.

def word_lengths_solution(sentence)
	words = sentence.split(" ")
  	ret_hsh = {}
  	words.each do |word|
      	ret_hsh[word] = word.length
    end
  ret_hsh
end

def word_lengths(sentence)
	
end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}

################################################################################

# Write a method frequent_letters that takes in a string and returns an array
# containing the characters that appeared more than twice in the string.

def frequent_letters_solution(string)
  hsh = Hash.new(0)
  string.each_char do |char|
    hsh[char] += 1
  end
  arr = []
  hsh.each do |key, val|
    if val > 2
      arr << key
    end
  end
  arr
end

def frequent_letters(string)

end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts

################################################################################

# Write a method unique_elements that takes in an array and returns a new array 
# where all duplicate elements are removed. Solve this using a hash.

# Hint: all keys of a hash are automatically unique

def unique_elements_solution(arr)
  hsh = Hash.new(0)
  arr.each do |ele|
    hsh[ele] += 1
  end
  hsh.keys
end

def unique_elements(arr)
  
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts

################################################################################

# Write a method element_replace that takes in an array and a hash. The method 
# should return a new array where elements of the original array are replaced 
# with their corresponding values in the hash.

def element_replace_solution(arr, hash)
	arr.map {|ele| hash[ele] || ele}
end

def element_replace(arr, hash)

end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts

################################################################################

################################################################################
###################           Enumerable#map              ######################
################################################################################

# Same syntax as Enumerable#each: 
# [1, 2, 3].map {|num| num + 1} #=> [2, 3, 4]
#
# ** OR **
#
# [1, 2, 3].map do |num|
#   num + 1
# end
# #=> [2, 3, 4]

# the map enumerable returns a new array with the results of running the block 
# *once* on each object passed in.

# ** Example:

# Define a method, square_arr(arr) that takes in an array, and squares every
# element in that array.
# square_arr([1, 2, 3]) #=> [1, 4, 9]

# Part 1: Solve this problem using while loops or Enumerable#each.

def square_arr_solution(arr)
  new_arr = []
  arr.each do |num|
    new_arr << num ** 2
  end
  new_arr
end

def square_arr(arr)

end

p square_arr([1, 2, 3]) #=> [1, 4, 9]
p square_arr([4, 5, 6]) #=> [16, 25, 36]

# Part 2: Solve this problem using Enumerable#map

def square_arr_map_solution(arr)
  arr.map {|num| num ** 2}
end

def square_arr_map(arr)

end

p square_arr_map([1, 2, 3]) #=> [1, 4, 9]
p square_arr_map([4, 5, 6]) #=> [16, 25, 36]

################################################################################
###################          Enumerable#select            ######################
################################################################################

# Similar (but not the same!) syntax to Enumerable#each:
# [1, 2, 3].select {|num| num.even? } #=> [2]
#
# ** OR **
#
# [1, 2, 3].select do |num|
#   num.odd?
# end
# #=> [1, 3]

# The *KEY* difference here is that select will check the block passed in for 
# truthiness. If the result is truthy, the current object will get put into a 
# new array. If the result is falsey, the enumerable will move on to the next 
# object in the collection. Select does *NOT* modify the passed in array, other
# than to select all elements whose results from the block are truthy.

# ** Example: 

# Define a method, mid_length_words(str) that takes in a string, and returns an
# array containing only words with a length between 5 and 8, inclusive.
# str = "hello, my name is Kevin Kaminski and I have an effervescent personality."
# p mid_length_words(str) #=> ["hello,", "Kevin", "Kaminski"]

# Part 1: Solve this problem with while loops or Enumerable#each.

def mid_length_words_solution(str)
  words = str.split(" ")
  ret_arr = []
  range = (5..8).to_a
  words.each do |word|
    if range.include?(word.length)
      ret_arr << word
    end
  end
  ret_arr
end

def mid_length_words(str)

end

str = "hello, my name is Kevin Kaminski and I have an effervescent personality."
p mid_length_words(str) #=> ["hello,", "Kevin", "Kaminski"]

# Part 2: Solve this problem using Enumerable#select

def mid_length_words_select_solution(str)
  str.split.select {|word| (5..8).include?(word.length)}
end

def mid_length_words_select(str)

end

str = "hello, my name is Kevin Kaminski and I have an effervescent personality."
p mid_length_words_select(str) #=> ["hello,", "Kevin", "Kaminski"]