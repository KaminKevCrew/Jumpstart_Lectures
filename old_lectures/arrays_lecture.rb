#Arrays

# Arrays are basically just Lists!

# declaring an array
# p way1 = [] ## the only way you need to know
# p way2 = Array.new(2) ## declares a size
# p way3 = Array.new(10, false) ## (size, default value)



# quick side lesson! difference between p and puts

# p "string" # calls inspect method, returns the item
# puts "string" # calls to_s method, returns nil


# var = p ["a", "b", 3] # var stores the array
# p var

# var = puts ["a", "b", 3] # var stores NIL
# p var

example = [1, 2, 3, "saitama", "praise the sun"]




#[] indexing
# p example[0]
# p example[0]
# p example[0..2]
# p example[3..-1]

#.length
# p example.length


example_arr = [1, 2, 3, "saitama", "praise the sun"]

# adding and removing from arrays

# p example_arr.push("push")
# # # << works just like push
# # example_arr << "shovel"
# # p example_arr
# result = example_arr.pop # pop returns the value that was popped
# p example_arr
# p "#{result} is here"

# p example_arr.unshift("edward elrich") # unshift places element in front of array
# # p example_arr

# p example_arr.shift # shift returns the value that was shifted
# p example_arr


# what happens when you use + instead?
# p example_arr + [8, "any size"]
# p example_arr


# iterating through an array using while loop

# i = 0
# while i < arr.length
#   # Do something
#   i += 1
# end





#NECESSARY array methods

#arr.include?(val)
#str.split # (' ') #=> "hello there".split(' ') => ["hello", "there"]
#arr.join # default ('') #=> ["hello", "there"].join(' ') => "hello there"



# USEFUL array methods
#arr.sort
#arr.reverse
#arr.uniq # returns a new array with only unique values # [1, 2, 2, 3].uniq => [1, 2, 3]
#arr.delete(val) # [1, 2, 2, 3].delete(2) => [1, 3]
#arr.delete_at(idx)





###########
# Practice Problems
###########

# given an array of integers
# return an array of the squares of those integers

def square_array(arr)
  squared = []
  i = 0
  while i < arr.length
    squared << arr[i] ** 2 # arr[i] * arr[i]
    i += 1
  end
  return squared
end

# p square_array([1, 2, 3, 4]) # [1, 4, 9, 16]
# p square_array([1, 3, 5, 9]) # [1, 9, 25, 81]



# given a string
# return a string of ONLY the words which are length 5 or greater
# (hint: how can we break a string up into individual words?)

def big_words(str)
  # words = str.split(' ')
  # i = words.length - 1 
  # while i >= 0
  #   if words[i].length < 5
  #     words.delete_at(i)
  #   end
  #   i -= 1
  # end
  # return words.join(' ')

  words = str.split(' ')
  long_words = ''
  i = 0
  while i < words.length
    if words[i].length >= 5
      long_words += words[i] + ' '
    end
    i += 1
  end
  return long_words
end

# p big_words("the quick brown fox jumped over the lazy dog")
# # => "quick brown jumped"
# p big_words("kevin is an absolute unit!!!!! The sheer size of this madman!")
# # => "kevin absolute unit!!!!! sheer madman!"


# given an array, return every unique el in the array (in order of appearance)
# cannot use .uniq method

def unique_items(arr)
  unique = []
  i = 0
  while i < arr.length
    current_item = arr[i]
    if !unique.include?(current_item)
      unique << current_item
    end
    i += 1
  end
  return unique
end

# p unique_items([0, 2, 0, 0, "dog", 2]) #-> [0, 2, "dog"]


# given an array of numbers
# return the SECOND biggest number

def second_largest_number(arr)
  # # making sure it's to have a second biggest value
  # if arr.length < 2
  #   return nil
  # end
  # # checking which of the first two values is biggest
  # if arr[0] > arr[1]
  #   biggest = arr[0]
  #   second_biggest = arr[1]
  # else
  #   biggest = arr[1]
  #   second_biggest = arr[0]
  # end
  # # starting from the 3rd value, checking every element to see if it's
  # # bigger than either biggest or second_biggest and replacing it as
  # # neccessary
  # i = 2
  # while i < arr.length
  #   current_number = arr[i]
  #   if current_number >= biggest
  #     second_biggest = biggest
  #     biggest = current_number
  #   elsif current_number >= second_biggest
  #     second_biggest = current_number
  #   end
  #   i += 1
  # end
  # return second_biggest

  return arr.sort[-2]
end

# p second_largest_number([6,7,8,9,10,1,2,3,4,5]) # 9
# p second_largest_number([5,4,5,4]) # 5
# p second_largest_number([1,2,2,3]) # 2
# p second_largest_number([19]) # nil
# p second_largest_number([10, 8, 7]) # 8


# A magic number is a number whose digits, when added together, sum
# to 7, e.g., 34. Define a method that checks if a number is a magic number.

def magic_number?(num)
  # Sum all digits => 34 => 3 + 4 => 3 + 4 == 7
  # can't iterate over digs in int, can over str
  # turn num into string
  # iterate over string's chars
  # turn each char into int, keep running total of digs

  stringified_num = num.to_s
  sum = 0
  i = 0
  while i < stringified_num.length
    sum += stringified_num[i].to_i
    i += 1
  end
  return sum == 7
end

# p magic_number?(7) # true
# p magic_number?(4201) # true
# p magic_number?(82) # false

# magic_numbers method return an array of the first n magic numbers

# magic_numbers(3) #=> [7, 16, 25]


def magic_numbers(n)
  magic_arr = []
  i = 7
  while magic_arr.length < n # continue finding magic numbers
    if magic_number?(i)
      magic_arr << i
    end
    i += 1
  end
  return magic_arr
end



# p magic_numbers(3) #=> [7, 16, 25]
# p magic_numbers(5000) #=> [7, 16, 25, ... 1204]



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
