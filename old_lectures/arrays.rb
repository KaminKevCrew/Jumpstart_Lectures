# Arrays

# Arrays are basically just Lists!

# declaring an array
# p way1 = [] ## the only way you need to know
# p filled_arr = ["element_1", "element_2", 12, false]
# p way2 = Array.new(10) ## declares a size
# p way3 = Array.new(10, false) ## (size, default value)
# dig_str = "3453453453453453"

# i = 0
# while i < dig_str.length
#   way3[dig_str[i].to_i] = true
#   i += 1
# end

# p way3


# quick side lesson! difference between p and puts

# p "string" # calls inspect method, returns the item
# puts "string" # calls to_s method, returns nil


# var = p ["a", "b", 3] # var stores the array
# p var

# var = puts ["a", "b", 3] # var stores NIL
# p var

# example = [1, 2, 3, "saitama", "praise the sun"]




#[] indexing
# p example[3]
# p example[0]
# p example[0..2]
# p example[3..-1]

#.length
# p example.length


# example_arr = [1, 2, 3, "saitama", "praise the sun"]

# adding and removing from arrays

# p example_arr.push("push")
# # << works just like push
# example_arr << "shovel"
# p example_arr

# result = example_arr.pop # pop returns the value that was popped

# p "#{result} is here"
# p example_arr

# p example_arr.unshift("edward elrich") # unshift places element in front of array
# # p example_arr

# p example_arr.shift # shift returns the value that was shifted
# p example_arr


# what happens when you use + instead?
# p example_arr + 8



# iterating through an array using while loop

# dig_arr = [12, 65,  3, 83, 40, 10]
#         #   0,  1,  2,  3,  4,  5

# i = 0
# while i < dig_arr.length
#   dig_arr[i] += 2
#   i += 1 # i = i + 1
# end

# p dig_arr



#NECESSARY array methods

# arr.include?(val) # pretty much the same as String#include?, but for elements
# str.split # returns an array of strings, where an original string was split based on some other string
# arr.join # joins an array into a single string, each element will be separated by a delimiter/string passed in as an arg.

# p "Here are some results"

# USEFUL array methods
#arr.sort # sort all elements in an array => [3, 6, 2, 1] => [1, 2, 3, 6]
#arr.reverse # reverses the order of the elements => [1, 2, 3] => [3, 2, 1]
#arr.uniq # return a new array with only unique elements => [1, 1, 2, 3, 3, 4] => [1, 2, 3, 4]
#arr.delete(val) # delete any elements that match the parameter => [1, 1, 1, 2, 5].delete(1) => [2, 5]
#arr.delete_at(idx) => [0, 1, "hi", 3, 4].delete_at(2) => [0, 1, 3, 4]





###########
# Practice Problems
###########

# given an array of integers
# return an array of the squares of those integers

def square_array(arr)
  # loop through array
  # each element in the array get squared
  # replace old value with squared value

  i = 0
  while i < arr.length
    arr[i] **= 2
    i += 1
  end
  return arr
end

# p square_array([1, 2, 3, 4]) # [1, 4, 9, 16]
# p square_array([1, 3, 5, 9]) # [1, 9, 25, 81]



# given a string
# return a string of ONLY the words which are length 5 or greater
# (hint: how can we break a string up into individual words?)

def big_words(str)
  # split my string into individual words
  # loop over my words
  # check the length of each word
  # if the length of the word is >= 5, keep it. 
  # else delete it.
  # return joined words

  words = str.split(' ')
  long_words = []
  i = 0
  while i < words.length
    if words[i].length >= 5 #=> words[i] < 5
      # words.delete_at(i) # be careful of delete_at in loops.
      long_words << words[i]
    end
    i += 1
  end
  return long_words.join(' ')
end

# p big_words("the quick brown fox jumped over the lazy dog")
# # => "quick brown jumped"
# p big_words("kevin is an absolute unit!!!!! The sheer size of this madman!")
# # => "kevin absolute unit!!!!! sheer madman!""


# given an array, return every unique el in the array (in order of appearance)
# cannot use .uniq method

# def unique_items(arr)
# end

# unique_letters([0, 2, 0, 0, "dog", 2]) -> [0, 2, "dog"]


# given an array of numbers
# return the SECOND biggest number

# def second_largest_number(arr)
# end

# p second_largest_number([6,7,8,9,10,1,2,3,4,5]) # 9
# p second_largest_number([5,4,5,4]) # 5
# p second_largest_number([1,2,2,3]) # 2
# p second_largest_number([19]) # nil


# A magic number is a number whose digits, when added together, sum
# to 7, e.g., 34. Define a method that checks if a number is a magic number.

# def magic_number?(num)
# end

# p magic_number?(7) # true
# p magic_number?(4201) # true
# p magic_number?(82) # false

# magic_numbers method return an array of the first n magic numbers

# magic_numbers(3) => [7, 16, 25]


# def magic_numbers(n)
# end

# p magic_numbers(3)
# p magic_numbers(50)


# given 2 sorted arrays
# merge the 2 arrays into a single, sorted array
# no .sort
# (hint: how can we take advantage of the fact that our arrays come pre-sorted?)
# (hint: the smallest number in our merged array started at which position?)

# def merge_sorted_arrays(arr1,arr2)
# end

# p merge_sorted_arrays([1,2,4],[3,6,10,11]) # [1, 2, 3, 4, 6, 10, 11]
# p merge_sorted_arrays([1,2,3],[4,5]) # [1, 2, 3, 4, 5]
# p merge_sorted_arrays([1,1,2,6],[1,2,2]) # [1, 1, 2, 2, 2, 6]


### Titleize
#
# Write a method that capitalizes each word in a string like a book title.
# Do not capitalize the words: 'a', 'and', 'of', 'over' or 'the'.

# def titleize(title)
# end

# puts titleize("basketball") == "Basketball"
# puts titleize("stephen curry") == "Stephen Curry"
# puts titleize("war and peace") == "War and Peace"
# puts titleize("the bridge OVER the river kwai") == "The Bridge over the River Kwai"
