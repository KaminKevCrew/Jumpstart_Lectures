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

# if short_message.length > 10
#   p "Long Message!"
# else
#   p "tiny message"
# end








# # if / elsif / else

# num = 3

# if num > 4 # false 
#   p "num is greater than 4"
#   num2 = 3
# elsif num < 4 # false
#   p "num is less than 4"
#   p num2
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

# grade = 44

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

# if nil
#   p "will i be printed?"
# end













# Methods

# method anatomy:
#   def method_name(greeting)
#     p greeting
#   end

#   str = "Hello"
#   method_name(str)

# def square_5
#   return 25
#   "The number should be 25"
# end

# num = square_5

# p num

# def puts(string)
#   #prints the string to console
#   return nil
# end

# def p(string)
#   #prints the string to console
#   return string
# end



# p vs return
# if result == 25
#   p "yay!"
# end


# def square_number(num)
#   squared = num ** 13

#   return squared
# end

# p square_number(2)

def add_three_numbers(number_one, number_two, number_three)
  p number_one
  return number_one + number_two + number_three
end



# result = add_three_numbers(2, 4, 6)

# p result
# p "hi"









#varibles made in the method do not exist outside of its scope:
# sum = 15

# def sum_six(start)
#   sum = start
#   sum += 1 + 2 + 3 + 4 + 5 + 6

#   return sum
# end

# sum = sum_six(sum)
# p sum





# String methods and dot operator
# p "string".length #=> 6
# p "string".upcase
# p "string".include?("s")

# p 6.odd?
# p 7.5.round
# p 7.0.ceil
# p 24.gcd(16)




# PRACTICE PROBLEMS!

# return true if word is even length

# def even_length?(word)
#   # return word.length % 2 == 0
#   return word.length.even?
# end

# p even_length?("chris")
# p even_length?("aj")
# p even_length?("harambe")







# return largest of 3 input numbers

# def largest_number(num1,num2,num3)
#   # issue if two numbers are the same
#   if num1 >= num2 && num1 >= num3
#     return num1
#   elsif num2 >= num1 && num2 >= num3
#     return num2
#   else
#     return num3
#   end
# end

# p largest_number(1, 3, 21) == 21
# p largest_number(-5, -4, -3) == -3
# p largest_number(3, 3, 3) == 3
# p largest_number(4, 4, 1) == 4









# Pair-Programming Example!

# ------------------
# buzzfizz! the method "buzzfizz" should take in a number and return true if the number is only divisble by either 2 or 7, but not both, return false for all other types of numbers
def buzzfizz(n)
  # big hefty boolean
  div_2 = n % 2 == 0
  div_7 = n % 7 == 0
  return (div_2 || div_7) && !(div_2 && div_7)
  # set of if else's
  # if n % 2 == 0
  #   if n % 7 == 0
  #     return false
  #   else
  #     return true
  #   end
  # elsif n % 7 == 0
  #   return true
  # end
  # return false
end
p buzzfizz(1) # false
p buzzfizz(2) # true
p buzzfizz(7) # true
p buzzfizz(14) # false
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