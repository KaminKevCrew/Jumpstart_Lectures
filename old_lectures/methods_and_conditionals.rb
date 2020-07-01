# Conditionals

num = 4

# p num == 4

# if num == 5
#   p "condition is true"
# end













# we can also add an "else" 










# # if / else

# message = "Isn't Jumpstart Great?"

# short_message = "hi"

# if message.length > 10
#   p "Long Message!"
# else
#   p "tiny message"
# end








# # if / elsif / else

# num = 4

# if num > 4 # false 
#   p "num is greater than 4"
# elsif num < 4 # false
#   p "num is less than 4"
# else 
#   p "num must be EXACTLY 4!"
# end








# bang operator

# if true
#   p "Successfully infiltrated the 'If' statement :D"
# end

# if !true
#   p "I won't be printed D:"
# end



# longer example

# grade = 85

# if grade >= 90
#   p "Great Job! You get an A!"
# elsif grade >= 80
#   p "Nice! It's a B!"
# elsif grade >= 70
#   p "Well... you get an A for effort?"
# elsif grade >= 60
#   p "D-unce"
# else
#   p "F-uckkkkkkk"
# end






# if (condition1)
#     do something if 1 is true
# elsif (condition2)
#     do something if 1 is false and 2 is true
# else
#     do something if 1 and 2 are both false
# end






# unless - the opposite of "if"

# unless true
#   p "I won't be printed ;-("
# end

# unless false
#   p "Hello! ^_^"
# end

# if !false
#   p "Hello! ^_^"
# end

# if !(condition)

# end








# Are strings and integers "truthy"?

# if "Avatar: the Last Airbender"
#   p "will i be printed?"
# end











# Methods

# method anatomy:
# def method_name(parameters)
#     code goes here...
# end

# def square_5
#   puts 5 ** 2
# end

# result = square_5

# p result



# p vs return
# if result == 25
#   p "yay!"
# end


def square_number(num)
  # if num > 5
  #   if num > 10
  #     # any code in here should be indented again.
  #   end
  #   # this is where you'd write your code
  # end
  # # and here too

  return num ** 2 # could also be num * num
end

# p square_number(2)

def add_three_numbers(number_one, number_two, number_three)
  return number_one + number_two + number_three
end



# p add_three_numbers(2, 4, 6)










#varibles made in the method do not exist outside of its scope:
# sum = 25

# def sum_six
#   sum += 6

#   sum
# end

# p sum_six





# String methods and dot operator
# p "string".length
# p "string".upcase
# p "string".include?("s")

# p 5.odd? #=> 5 % 2 == 1 # also a .even? method.
# p 7.3.round
# p 7.3.ceil # also a .floor; always rounds down
# p 24.gcd(16)


# Necessary methods:
  # Strings
    # .length
    # .include?()
    # .upcase
    # .downcase
    # .to_i
    # .reverse (maybe)
  # Integers
    # .to_s

# PRACTICE PROBLEMS!

# return true if word is even length

def even_length?(word)
  # grab word, and get its length

  return word.length % 2 == 0 # word.length.even? also works

end

# p even_length?("chris") # false
# p even_length?("aj") # true
# p even_length?("harambe") # false







# return largest of 3 input numbers

def largest_number(num1,num2,num3)
  # conditional chain
  # check first num, then second num, then third.
  if num1 > num2
    if num1 > num3
      return num1
    else 
      return num3
    end
  elsif num2 > num3 # we know num1 < num2. not sure about num2 vs num3
    return num2
  else # we only have num3
    return num3
  end
  # [num1, num2, num3].max
end

# p largest_number(1, 3, 21) == 21
# p largest_number(-5, -4, -3) == -3


# Mischievous Manipulation
# Write a method mischievous_manipulation that accepts a sentence as an argument. The method should return a new sentence where the words alternate between having their first or last vowel removed. For example:
# the 1st word should be missing its first vowel
# the 2nd word should be missing its last vowel
# the 3rd word should be missing its first vowel
# the 4th word should be missing its last vowel
# ... and so on
# Note that words that contain no vowels should remain unchanged. Vowels are the letters a, e, i, o, u.
# Examples:

def mischievous_manipulation(sent)
  # if you have any questions about the methods used here, check out ruby-doc!!!

  # split string into individual words
  # iterate over words
  # check whether each word is at an even index
  # if index is even, remove first vowel
  # else remove last vowel
  # as words are being processed, push them into new list/array
  # join them all together into a single string at the end and return

  words = sent.split(' ')
  manipulated = []

  words.each.with_index do |word, i|
    if i.even? # remove first vowel
      manipulated << remove_first_vowel(word)
    else # remove last vowel
      manipulated << remove_last_vowel(word)
    end
  end

  return manipulated.join(' ')
  # make two helper methods: 
    # remove_first_vowel
    # remove_last_vowel
end

def remove_first_vowel(word)
  vowels = "aeiouAEIOU"

  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[0...i] + word[i + 1..-1]
    end
  end
  return word
end

def remove_last_vowel(word)
  # make use of remove_first_vowel
  current_word = remove_first_vowel(word.reverse)

  return current_word.reverse
end

p mischievous_manipulation('panthers are great animals')
# "pnthers ar grat animls"
p mischievous_manipulation('running panthers are epic') 
# "rnning panthrs re epc"
p mischievous_manipulation('code properly please') 
# "cde proprly plase"
p mischievous_manipulation('my forecast predicts rain today') 
# "my forecst prdicts ran tday"





# Pair-Programming Example!

# ------------------
# buzzfizz! the method "buzzfizz" should take in a number and return true if the number is only divisble by either 2 or 7, but not both, return false for all other types of numbers
def buzzfizz(n)

end


# p buzzfizz(1) # false
# p buzzfizz(2) # true
# p buzzfizz(7) # true
# p buzzfizz(14) # false

#------------------
# fizzbuzz! if a num is divisible by three return "fizz", divisible by five return "buzz", divisible by both return "fizzbuzz", divisible by neither, return nil

def fizzbuzz(num)
  
end

# p fizzbuzz(3) # fizz
# p fizzbuzz(5) # buzz
# p fizzbuzz(15) # fizzbuzz
# p fizzbuzz(2) # nil

#-------------------
# V for Vendetta words 
# Given a word the method should return true if it starts with the letter v and is also longer than 7 characters long but false if it is either less than or equal to 7 characters long or doesn't start with a v

def vindicated_word?(word)
  
end

# p vindicated_word?("vendetta")
# p vindicated_word?("vox")
# p vindicated_word?("sasquatch")



