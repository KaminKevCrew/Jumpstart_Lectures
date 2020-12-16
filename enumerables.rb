###############
#Enumerables!
###############



# Arrays



arr1 = ["a", "b", "c", "d", "e", "f"]



# example 1
# arr1.each do |letter|
#   p letter
#   doubled_letter = letter * 2
#   p doubled_letter
# end

# example 2 (one liner)
# new_arr = []
# [1, 2, 3, 4, 5].each { |element| new_arr << (element * 2) }

# p new_arr

# def doubler(arr)
#   # new_arr = []
#   # # don't modify in place
#   # return [1, 2, 3, 4, 5].each { |element| new_arr << (element * 2) }
# end

# {} can ONLY do one line
# do blocks are more flexible

# def square_number_arr(arr)
#   squared_nums = []
#   arr.each do |num| # num is the same as arr[i] in a while loop
#     squared_nums << num ** 2
#   end
#   return squared_nums
# end

# p square_number_arr([1, 2, 3, 4, 5])

# arr1.each.with_index do |variable, index|
#   p "el #{variable} at index #{index}"
# end

# arr1.each.with_index { |el,idx| puts "index #{idx} contains #{el}" }

# takes in an array and sums all numbers at odd indexes

def odd_sum(arr)
  sum = 0
  arr.each.with_index do |num, index|
    if index % 2 == 1
      sum += num
    end
  end
  return sum
end

arr = [1, 2, 3, 4, 5, 6]
# p odd_sum(arr) #=> 12

# strings

str = "jumpstart"


# str.each_char.with_index do |char, index|
#   p char
#   p char * 2 ** index
# end

# str.each_char.with_index do |el,idx| 
#   puts "#{el} at #{idx}" 
# end

str1 = "aabcdeeef"

# Define output_repeating_char that takes in a string, returns an array of all characters which are the same as the following char in the string

# def output_repeating_char(str)
#   repeated_arr = []
#   str.each_char.with_index do |char, i|
#     # if i == str.length - 1 # last char
#     #   break
#     # end
#     if char == str[i + 1] # what happens when we get to the last iteration - what comes after "f"?
#       repeated_arr << char
#     end
#   end
#   return repeated_arr
# end

# p output_repeating_char(str1) #=> ["a", "e", "e"]




# number
# number.times

# arr = []
# num = 2

# 30.times do |time|
#   arr << num ** num 
#   num *= 2
# end

# p arr






# ranges
# (start..end) inclusive
# (start...end) exclusive

str = "jumpstart"




# alphabet = "abcedfghijklmnopqrstuvwxyz"

# use ranges now!
# alphabet = ("a".."z")
# p alphabet
# p alphabet.include?("b")









###############
# PROBLEMS
###############


# Define a method that, given an array of numbers, returns another array with
# each of the argument's numbers multiplied by two. Do not modify the original array.


# def array_times_two(arr)
# end

# p array_times_two([1, 5, 9])






# Define a method that reverses the digits of its argument and returns the
# resulting number.

# def reverse_digits(int)
# end

# p reverse_digits(1234) # => 4321
# p reverse_digits(456785432) # => 234587654





# Define a method that returns the longest word in its argument.

# def longest_word(str)
# end



# p longest_word("is erica nicer") #erica
# p longest_word("is nick a genius") #genius








# The Fibonacci Sequence follows a simple rule: the next number in the sequence
# is the sum of the previous two. The sequence begins with [0, 1]. One computes
# the third number by summing the first and  second (0 + 1 == 1),
# yielding [0, 1, 1], one computes the fourth number by summing the second and
# the third, yielding [0, 1, 1, 2], and so on.

# Define a method, #fibs, that accepts an integer as an argument. The method should return an array of the first n Fibonacci numbers.
# fibs(1) => [0]
# fibs(2) => [0, 1]
# fibs(3) => [0, 1, 1]
# fibs(10) => [0, 1, 1, 2, 3, 5] 8 13 21 34
def fibs(n)
  fibs_arr = [0, 1]
  if n == 1
    # break # key word to exit most recent loop
    return [0]
  elsif n < 1
    return []
  end
  while fibs_arr.length < n
    # use negative indexing to always have the last and second to last fib
    new_num = fibs_arr[-1] + fibs_arr[-2]
    fibs_arr << new_num
  end
  return fibs_arr
end


# p "Fibs\n"
# p fibs(0) #=> []
# p fibs(1) #=> [0]
# p fibs(2) #=> [0, 1]
# p fibs(3) #=> [0, 1, 1]
# p fibs(6) #=> [0, 1, 1, 2, 3, 5]
# p fibs(9) #=> [0, 1, 1, 2, 3, 5, 8, 13, 21]



# write a method longest_pause(string) that takes a string and counts the
# longest "ummmm". For example:
# longest_pause("ummmmmmm") => 8

# def longest_pause(sentence)
# end

# puts longest_pause("ummmmmmm")
# puts longest_pause("Hi there, I'm um here for the interview")
# puts longest_pause("um I'm uum not sure.")
# puts longest_pause("ummmmm, I'm umm not sure.")





# A magic number is a number whose digits, when added together, sum
# to 7, e.g., 34. Define a method that returns an array of the first n magic
# numbers. You may wish to write a helper method that returns a boolean
# indicating whether a number is magic.
# magic_numbers(3) => [7, 16, 25]

# def magic_number?(n)

# end

# def magic_numbers(n)
# end

# puts "Magic Number\n\n"
# p magic_numbers(3)


# Write a method - five_ws, that takes one or more sentences and
# returns them as questions if they contain the words: why, what, where,
# who,  when.

# def five_ws(string)
# end



# puts five_ws("Where can I find new shoes. I'm missing my favorite pair.") == "Where can I find new shoes? I'm missing my favorite pair."
# puts five_ws("Who is at the door.") == "Who is at the door?"
# puts five_ws("Whenever you are ready I'll meet you at the shop.") == "Whenever you are ready I'll meet you at the shop."
# puts five_ws("Who. What. Where. When.") == "Who? What? Where? When?"


