# Warm-up!

# help me construct a boolean statement that checks if a string is even length



# str1 = "Jumpstart" # false (odd length)
# str2 = "Demon Slayer" # true (even length)
# str3 = "TzTok-Jad" # false (odd length)

# puts str1.length % 2 == 0
# puts str2.length % 2 == 0
# puts str3.length % 2 == 0














# help me construct a boolean statement that checks if a given number is divisible by either 3 or 5 but NOT both!

# num1 = 0 # false (divisible by both 3 and 5)
# num2 = 6 # true (just 3)
# num3 = 10 # true (just 5)
# num4 = 15 # false (divisible by both 3 and 5)
# num5 = 31 # false (divisible by neither)

# # 3 or 5
# p (num2 % 3 == 0 || num2 % 5 == 0) && !(num2 % 3 == 0 && num2 % 5 == 0)














# Conditionals!


# Conditionals are started with an "if", ended with an "end"
# and have a boolean statement to check


if 5 < 4
    p "This line gets run ONLY if the expression is true!"
    p "hello"

end












# we can also add an "else"

# # if / else

# message = "Isn't Kevin Dreamy?"

# short_message = "hi"

# if short_message.length > 10
#   p "Long Message!"
# else # optional
#   p "tiny message"
# end

# p "done with the conditional"








# # if / elsif / else

# num = 3

# if num > 4 # false
#   p "num is greater than 4"
# elsif num < 4 # false
#   p "num is less than 4"
# else
#   p "num must be EXACTLY 4!"
# end








# bang operator # NOT operator

# if true
#   p "Successfully infiltrated the 'If' statement :D"
# end





# longer example



# if grade >= 90
#   p "Great Job! You get an A!"
# elsif grade >= 80
#   p "Nice! It's a B!"
# elsif grade >= 70
#   p "Well... you get an A for effort?"
# elsif grade >= 60
#   p "D-unce"
# end

# grade = 85

# if grade >= 60 # most specific statement
#   p "D"
# elsif grade >= 70
#   p "C"
# elsif grade >= 80
#   p "B"
# elsif grade >= 90 # most general statement
#   p "A"
# end



# p "done with the if statement"






# if (condition1)
#     do something if 1 is true
# elsif (condition2)
#     do something if 1 is false AND 2 is true
# else
#     do something if 1 and 2 are BOTH false
# end






# unless - the opposite of "if"

# unless true
#   p "I won't be printed ;-("
# end

# unless false
#   p "Hello! ^_^"
# end









# Are strings and integers "truthy"?

# if "Avatar: the Last Airbender"
#   p "will i be printed?"
# end













# Methods aka Functions



# method anatomy:
# def method_name(parameters)
#     # Run whatever code we want with the given parameters!
  # return statement
# end



# def square_5()
#     # what happens in the method is written after "def" and before "end"
#     # code inside the method should be indented once
#   num = 5 * 5
#   return num
# end


# result = square_5()
# # p result


# result += 7

# p result






def square_number(num)
  squared = num ** 2

    # every method MUST have a return
  return squared
end

# p square_number(8)
# p square_number(1024)
# p square_number(8192)



# def add_three_numbers(number_one, number_two, number_three)

#   # puts number_one
#   return number_one + number_two + number_three
# end



# sum = add_three_numbers(2, 4, 6)
# p sum
# sum += 1
# p sum










#varibles made in the method do not exist outside of its scope:
# sum = 100000
# def sum_six()
#   sum = 1 + 2 + 3 + 4 + 5 + 6
#   return sum 
# end

# p sum_six()


# p sum






# dot methods are just methods that ruby
# included out of the box

# String methods and dot operator
# p "string".length # gives the length of the string

# p "string".include?("tg")
# p "string".include?("qq")



# p "string".upcase
# p "ASDFLKAJ12341234#^&^&^".downcase

# data swapping

# str = "1234"
# p str.to_i
# int = 7654
# p int.to_s

# def digits_sum_to_seven(num)
#   # return num.to_s[0].to_i + num.to_s[1].to_i == 7
  
# end
# p digits_sum_to_seven(16) # true
# p digits_sum_to_seven(17) # false

def starts_with_vowel?(string)
  vowels = "aeiouAEIOU"
  return vowels.include?(string[0])
end

# p starts_with_vowel?("aardvark") # true
# p starts_with_vowel?("Aang") # true

# p "aeiou".include?("a")

def even_length?(string)
  return string.length % 2 == 0
end

# p even_length?("kevin") # false
# p even_length?("aj") # true
# p even_length?("harambe") # false


def starts_with_vowel_and_even_length?(string)
  if starts_with_vowel?(string) && even_length?(string)
    return true
  else
    return false
  end
end

# p starts_with_vowel_and_even_length?("AJ is da bomb!") # true

# PRACTICE PROBLEMS!

# define a method that returns true if word is even length and false otherwise








# define a method that returns the largest of 3 input numbers


# 2 roles

# navigator
  # never touch the keyboard or mouse
  # the brains of solving the operation
  # communicate to the driver what they want and where
# driver
  # listen to the navigator
  # transform their words / idea into code


# define a method, largest number that takes in three numbers and returns the largest of those three.

def largest_number(num1, num2, num3)
  # check if num1 is biggest, then num2 and num3
  if num1 >= num2 && num1 >= num3
    return num1
  elsif num2 >= num1 && num2 >= num3
    return num2
  else
    return num3
  end
end


# p largest_number(1, 3, 21) # 21
# p largest_number(-5, -4, -3) # -3
# p largest_number(7, 7, 7) # 7
# p largest_number(0, -4, 0) # 0
# p largest_number(10, 10, 0) # 10










# define a method that returns true if a string is even length
# OR starts with a "q", but NOT both


# p special_word("quail") # true
# p special_word("qualitative") # true
# p special_word("smash!") # true
# p special_word("queens") # true
# p special_word("") # true
# p special_word("queens") # true
# p special_word("queens") # true









# Pair-Programming Example!

# buzzfizz! the method "buzzfizz" should take in a number and return true if the number is only divisble by either 2 or 7, but not both, return false for all other types of numbers

# def buzzfizz(n)
# end

# p buzzfizz(1) # false
# p buzzfizz(2) # true
# p buzzfizz(7) # true
# p buzzfizz(14) # false











# given a string, check if it is a VALID smiley face!
# Rules for a smiley face:
  # -Each smiley face must start with eyes and must end with a mouth
    # -Valid characters for eyes are ":" or ";"
    # -Valid characters for mouth are ")" or "D"

  # A smiley face can OPTIONALLY have a nose 
    # -Valid characters for a nose are "-" or "~"

  # No additional characters are allowed except for those mentioned.

def valid_smiley(str)
  if ":;".include?(str[0])
    # have valid eyes
    if str[-1] == ")" || str[-1] == "D"
      # have valid eyes AND valid mouth
      if str.length == 2
        return true
      elsif str.length == 3
        # have valid eyes and mouth, need to check for nose
        return "-~".include?(str[1]) # will return true if nose is valid, false otherwise
      end
    end
  end
  return false
end


p valid_smiley(":)") # true
p valid_smiley(";-D") # true
p valid_smiley(":~)") # true

p valid_smiley("(-:") # false
p valid_smiley(":}") # false
p valid_smiley(":-]") # false
p valid_smiley(";--)") # false








# fizzbuzz! if a num is divisible by three return "fizz", divisible by five return "buzz", divisible by both return "fizzbuzz", divisible by neither, return nil

# def fizzbuzz(num)
# end

# p fizzbuzz(3) # fizz
# p fizzbuzz(5) # buzz
# p fizzbuzz(15) # fizzbuzz
# p fizzbuzz(2) # nil









# V for Vendetta words
# Given a word the method should return true if it starts with the letter v and is also longer than 7 characters long but false if it is either less than or equal to 7 characters long or doesn't start with a v

# end

# p vindicated_word?("vendetta") # true
# p vindicated_word?("vox") # false
# p vindicated_word?("sasquatch") # false