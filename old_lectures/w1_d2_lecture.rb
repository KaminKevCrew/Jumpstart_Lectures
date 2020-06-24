# Conditionals

# num = 4

# p num == 4

# if true
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

# num = 8

# if num > 4 # false 
#   p "num is greater than 4"
# elsif num > 6 # false
#   p "num is less than 4"
# else
#   p "num must be EXACTLY 4!"
# end

# if num > 4
#   p "num > 4"
# end

# if num > 6
#   p "num > 6"
# end

# if num == 4
#   p "num is 4"
# end




# bang operator

# if true
#   p "Successfully infiltrated the 'If' statement :D"
# end

# if !true
#   p "I won't be printed D:"
# end



# longer example

# grade = 90

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









# Are strings and integers "truthy"?

# if "Avatar: the Last Airbender"
#   p "will i be printed?"
# end













# Methods

# method anatomy:
#    def method_name(parameter_1, parameter_2, ...)
#         code goes here...
#    end

def square_5
  # what happens in the method is written after "def" and before "end"
  # code inside the method should be indented once
  return 5 * 5
end


# p square_5




# p vs return
# if result == 25
#   p "yay!"
# end


def square_number(num)
  squared = num ** 2

  return squared
end

# p square_number(12)

def add_three_numbers(number_one, number_two, number_three)
  return number_one + number_two + number_three
end



# p add_three_numbers(2, 4, 6)










#varibles made in the method do not exist outside of its scope:

# sum = 1 + 2 + 3 + 4 + 5 + 6
# def sum_six
#   return sum
# end

# p sum_six





# String methods and dot operator
# p "string".length
# p "string".upcase
# p "string".include?("s")

# p 5.odd?
# p 7.7.round
# p 7.3.ceil
# p 7.9.floor
# p 24.gcd(16)




# PRACTICE PROBLEMS!

# return true if word is even length

def even_length?(word)
  # if will return true based on length of word.
  # if word.length % 2 == 0
  #   return true
  # else
  #   return false
  # end

  return word.length % 2 == 0

  # return word.length.even?
end

# p even_length?("chris") #false
# p even_length?("aj") #true
# p even_length?("harambe") #false







# return largest of 3 input numbers

def largest_number(num1,num2,num3)
  # check if num1 is bigger than num2 and num3.
  # if it is, return num1.
  # do the same things for num2 and num3 respectively.

  if num1 > num2 && num1 > num3
    return num1
  elsif num2 > num3
    return num2
  else
    return num3
  end
end

# p largest_number(1, 3, 21) == 21
# p largest_number(-5, -4, -3) == -3
# p largest_number(1, 7, 7) # 7








# Pair-Programming Example!

# ------------------
# buzzfizz! the method "buzzfizz" should take in a number and return true if the number is only divisble by either 2 or 7, but not both, return false for all other types of numbers
# def buzzfizz(n)
# end
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
  # true if both longer than 7 letters and begins with V
  # false otherwise

  # if statement 
  # longer than 7 letters/starts with v

  if word.length > 7 
    if word[0] == "V" || word[0] == 'v'
      return true
    end
  end
  return false
end

p vindicated_word?("vendetta") #=> true
p vindicated_word?("vox") #=> false
p vindicated_word?("sasquatch") #=> false



