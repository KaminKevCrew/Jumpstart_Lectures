# #Arrays

# # Arrays are basically just Lists!

# # declaring an array
# # p way1 = [] ## the only way you need to know
# # p way2 = Array.new(2) ## declares a size => [nil, nil]
# #  way3 = Array.new(10, "Hello") ## (size, default value) => [false, false, ... , false]
# # way3[0] += "*"
# # p way3



# # quick side lesson! difference between p and puts

# # p "string" # calls inspect method, returns the item
# # puts "string" # calls to_s method, returns nil


# # var = ["a", "b", 3] # var stores the array
# # p var

# # var = puts ["a", "b", 3] # var stores NIL
# # p var

# example = [1, 2, 3, "saitama", "praise the sun"]



# #[] indexing
# # p example[0]
# # p example[0]
# # p example[0..2]
# # p example[3..-1]

# #.length
# # p example.length


# # example = [1, 2, 3, "saitama", "praise the sun"]

# # adding and removing from arrays

# example.push("push")

# # # << works just like push
# example << "shovel"
# # # p example
# # result = example.pop # pop returns the value that was popped

# # p "#{result} is here"
# # p example

# # example.unshift("edward elrich") # unshift places element in front of array
# # p example

# # example.shift # shift returns the value that was shifted
# # p example


# # what happens when you use + instead?
# # p example + 8



# # iterating through an array using while loop

# # arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# # i = 0
# # while i < arr1.length
# #   p arr1[i] * 2
# #   i += 1
# # end





# #NECESSARY array methods

# # arr.include?(val)
# # str.split #=> []
# # p "Hello World".split(" ") #=> ["Hello", "World"]
# # arr = "Hello World".split("o") #=> ["Hello", "World"]
# # p arr.join("o")



# # USEFUL array methods
# # arr = [3, 56,1, 567674, 63, 6, 9, 6, 6, 6, 6, 6, 6, 6]
# # # arr = arr.sort
# # # p arr.reverse
# # # p arr.uniq
# # # p arr.delete(6)
# # # p arr
# # arr.delete_at(3)
# # p arr





###########
# Practice Problems
###########

# given an array of integers
# # return an array of the squares of those integers

# def square_array(arr)
#   i = 0
#   squared = []
#   while i < arr.length
#     num = arr[i]
#     squared << num ** 30
#     i += 1
#   end
#   return squared
# end

# p square_array([1, 2, 3, 4]) # [1, 4, 9, 16]
# p square_array([1, 3, 5, 9]) # [1, 9, 25, 81]

# big_num = 31415926535829 ** 100000
# p big_num

# given a string
# return a string of ONLY the words which are length 5 or greater
# (hint: how can we break a string up into individual words?)

# def big_words(str)
#   i = 0
#   words = str.split
#   five_or_longer = []
#   # p words
#   # big = str.length 
#   while i < words.length
#     # words[i] => lets us look at each word in the array words.
#     # p words[i]
#     # check words[i] for length 5 or greater
#     if words[i].length >= 5
#       five_or_longer << words[i] # How do I keep this and give it back at the end of the method
#     end
#     i += 1
#   end
#   return five_or_longer.join(" ")
# end

# p big_words("the quick brown fox jumped over the lazy dog")
# # => "quick brown jumped"
# p big_words("kevin is an absolute unit!!!!! The sheer size of this madman!")
# => "kevin absolute unit!!!!! sheer madman!"


# given an array, return a new array with a single instance of any element (no dupes.) (in order of appearance)
# cannot use .uniq method

# def unique_items(arr)
#   i = 0
#   uniq = []
#   while i < arr.length
#     ele = arr[i]
#     # uniq should contain one instance of every element in arr
#     # i = 0
#     # arr[0] = 0 = ele
#     # check if uniq includes 0
#       # does not
#       # put 0 into uniq
#     if !uniq.include?(ele)
#       uniq << ele
#     end
#     i += 1
#   end
#   return uniq
# end

# p unique_items([0, 2, 0, 0, "dog", 2]) #=> [0, 2, "dog"]


# given an array of positive numbers
# return the SECOND biggest number

# def second_largest_number(arr)
#   i = 1
#   biggest = -1
#   second_biggest = -1
#   while i < arr.length
#     if arr[i] > biggest
#       biggest = arr[i]
#     end
#     i += 1
#   end
#   return biggest # We want the *second* biggest
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


def second_largest_number(arr)
  if arr[0]> arr [1]
    biggest = arr[0]
    second_biggest = arr[1]
  else
     biggest = arr[1]
    second_biggest = arr[0]
  end
    i=2
    while i < arr.length
      if arr[i]>= biggest
        second_biggest = biggest
        biggest = arr[i]
      elsif arr[i]> second_biggest
        second_biggest = arr [i]
      end
      i +=1
    end
  return second_biggest
end
p second_largest_number([6,7,8,9,10,1,2,3,4,5]) # 9
p second_largest_number([5,4,5,4]) # 5
p second_largest_number([1,2,2,3]) # 2
# p second_largest_number([19]) # nil