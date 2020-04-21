###############
#Enumerables!
###############



# Arrays



arr1 = ["a", "b", "c", "d", "e", "f"]



# example 1
# arr1.each do |el|
#   p el
# end

# example 2 (one liner)
# new_arr = []
# [1, 2, 3, 4, 5].each { |element| new_arr << (element * 2)}

# p new_arr


# {} can ONLY do one line
# do blocks are more flexible


# arr1.each.with_index do |variable, index|
#   p "el #{variable} at index #{index}"
# end

# arr1.each.with_index { |el,idx| p "el #{el} at index #{idx}" }


# strings

# str = "jumpstart"
# new_str = ""


# str.each_char do |char|
#   char.upcase
# end

# p str

# i = 0
# while i < str.length
#   # do something 
#   i += 1
# end

# str.each_char.with_index do |el,idx| 
#   puts "#{el} at #{idx}" }
# end

# str1 = "aabcdeef"

# def output_repeating_char(str)
#   str.each_char.with_index do |char, idx|
#     if char == str[idx + 1]
#       p char
#     end
#   end
# end


# output_repeating_char(str1) #=> "a", "e"


# number
# number.times

# arr = []

# 5.times do |time|
#   arr << [time] 
# end

# p arr






# ranges
# (start..end) inclusive
# (start...end) exclusive


# alphabet = "abcdefghijklmnopqrstuvwxyz"
# alphabet[0...4]

# use ranges now!
# alphabet = ("a".."z") #=> this is determined by the ASCII chart
# p alphabet.to_a









###############
# PROBLEMS
###############


# Define a method that, given an array of numbers, returns another array with
# each of the argument's numbers multiplied by two. Do not modify the original array.


def array_times_two(arr)
  doubled = []
  arr.each do |num|
    doubled << num * 2
  end
  return doubled
end

# p array_times_two([1, 5, 9]) #=> [2, 10, 18]






# Define a method that reverses the digits of its argument and returns the
# resulting number.

def reverse_digits(int)
  # return int.to_s.reverse.to_i

  digs = int.to_s
  rev_digs = "" 

  i = digs.length - 1
  while i >= 0
    rev_digs << digs[i]
    i -= 1
  end
  return rev_digs
end

# p reverse_digits(1234) # => 4321
# p reverse_digits(456785432) # => 234587654





# Define a method that returns the longest word in its argument.

def longest_word(str)
  longest_word = ""
  words = str.split(' ')

  words.each do |word|
    if word.length > longest_word.length
      longest_word = word
    end
  end
  return longest_word
end



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
# fibs(6) => [0, 1, 1, 2, 3, 5] 8 13 21 34

def fibs(n)
  # fibs = [0, 1]
  # return [0] if n == 1
  # return fibs if n == 2

  # (n - 2).times do 
  #   fibs << fibs[-1] + fibs[-2]
  # end
  # return fibs

  return 0 if n == 1
  return 1 if n == 2

  return fibs(n - 1) + fibs(n - 2)
end
# puts "Fibs\n\n"
# p fibs(1)
# p fibs(2)
# p fibs(3)
# p fibs(6)
# p fibs(9)



# write a method longest_pause(string) that takes a string and counts the
# longest "ummmm". For example:
# longest_pause("ummmmmmm") => 8



def longest_pause(sentence)
  words = sentence.split(' ')
  longest_um = ""

  words.each do |word|
    if word[0] == 'u' && word[1] == 'm'
      word.each_char do |char|
        if char != 'u' || char != 'm'
          break
        end
      end
      
    end
  end
  return longest_um.length
end

puts longest_pause("ummmmmmm") #=> 8
puts longest_pause("Hi there, I'm um here for the interview")
puts longest_pause("um I'm umm not sure.")
puts longest_pause("ummmmm, I'm umm not sure.")





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


