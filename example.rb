# Conditionals

num = 4

# p num == 4

# if true
#   p "condition is true"
# end











# we can also add an "else" 










# # if / else

message = "Isn't Jumpstart Great?"

short_message = "hi"

# if message.length > 10
#   p "Long Message!"
# else
#   p "tiny message"
# end








# # if / elsif / else

num = 4

# if num > 4 # false 
#   p "num is greater than 4"
# elsif num < 4 # false
#   p "num is less than 4"
# else 
#   p "num must be EXACTLY 4!"
# end








# bang operator

# if !nil
#   p "Successfully infiltrated the 'If' statement :D"
# end

# if !false
#   p "I won't be printed D:"
# end

# str = "hello"

# p !!str

# longer example

# grade = 99

# if grade >= 90
#   if grade >= 97
#     p "Great Job! You get an A+!"
#   elsif grade >= 93
#     p "Great Job! You get an A!"
#   else 
#     p "So close."
#   end
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
# elsif (condition2) => optional, no limit to number of elsif
#     do something if 1 is false and 2 is true
# else => optional, can only have 1 else
#     do something if 1 and 2 are both false
# end






# unless - the opposite of "if"

# unless (condition) == if !(condition)

# num = 5
# unless num < 4 #=> condition evaluates to false
#   p "my number is big"
# end

# check if my string has no 'q'

# str1 = "Avatar Aang"

# unless str1.include?('q') 
#   p "This string has no q's"
# end

# unless true
#   p "I won't be printed ;-("
# end

# if !true
#   p "I won't be printed either."
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
  #  def method_name(param_1, param_2, ..., param_n)
  #       code goes here...
  #       return (result)
  #  end
# method call anatomy:
  #  method_name(arg_1, arg_2, ..., arg_n)
# def square_n(num)
#   if num > 1000
#     return "That's a big number"
#   else
#     return "The number was small"
#   end
# end

# p square_n(60)





# p vs return
# if result == 25
#   p "yay!"
# end


# def square_number(num)

# end

# p square_number(8)

# def add_three_numbers(number_one, number_two, number_three)
#   sum = number_one + number_two + number_three
#   return sum
# end



# p add_three_numbers(2, 4, 6)










#varibles made in the method do not exist outside of its scope:

# def sum_six
#   sum = 1 + 2 + 3 + 4 + 5 + 6

#   return sum
# end

# summed = sum_six()

# def double_sum()
#   return sum * 2
# end

# p double_sum(summed)



# String methods and dot operator
# p "string".length
# p "string".upcase #=> String#downcase => On the String class, there's a method called downcase that can be called with the syntax "string".downcase
# p "strings".include?("s") || "strings".include?("t")

# p 5.odd? #=> Integer#even? => true or false 5 % 2 == 0
# p 7.3.round #=> round to the nearest whole number exactly as you think it would
# p 7.3.ceil #=> Float.floor => always round down; Float#ceil will always round up.
# p 24.gcd(16)




# PRACTICE PROBLEMS!

# return true if word is even length

# def even_length?(word)

#   # if word.length % 2 == 0
#   #   return true
#   # else
#   #   return false
#   # end

#   return word.length % 2 == 0 
  
  
# end

# p even_length?("chris")
# p even_length?("aj")
# p even_length?("harambe")







# return largest of 3 input numbers

# def largest_number(num1,num2,num3)
# end

# p largest_number(1, 3, 21) == 21
# p largest_number(-5, -4, -3) == -3






#return a word that's in pig latin
#rules:
#1) remove first constant and move to end of word. eg: happy => appyhay
#2) if two constants, move both to end and add ay. eg: smile => ilesmay (this one's difficult, let's ignore for now)
#3) starts with vowel, just add ay at end. eg: eat => eatay

#we assume it's lower case

# def pig_latinify(word)
# end

# p pig_latinify("saitama") # aitamasay
# p pig_latinify("apple") # appleay
# p pig_latinify("brand") # andbray\








# Pair-Programming Example!

# ------------------


# buzzfizz! the method "buzzfizz" should take in a number and return true if the number is only divisible by either 2 or 7, but not both, return false for all other types of numbers
def buzzfizz(n)
  # 8 % 2 == 0 => true => even divisor
  # if n % 2 == 0 
  #   if n % 7 == 0 # n is divisible by 2, checking for 7
  #     return false # div by both; false
  #   else
  #     return true # div by 2; true
  #   end
  # elsif n % 7 == 0
  #   return true # not div by 2, div by 7; true
  # end
  # return false # div by neither; false

  # Now for the faster (to type)/more compact way:
  return (n % 2 == 0 || n % 7 == 0) && !(n % 2 == 0 && n % 7 == 0)
end
# p buzzfizz(1) # false
# p buzzfizz(2) # true
# p buzzfizz(7) # true
# p buzzfizz(14) # false
#------------------

# define a method that takes an integer, and reverses the order in which its digits appear. ex. 1234 => 4321

def reverse_int(int)
  # stringified_int = int.to_s
  # reversed_int = stringified_int.reverse.to_i
  # return reversed_int
  # return int.to_s.reverse.to_i


  # new_int = 0
  # # loop; can always get the digit in the smallest place by modding 10
  # while int > 0
  #   new_int *= 10
  #   new_int += int % 10
  #   int /= 10
  # end
  # return new_int
end

# p reverse_int(1234) #=> 4321
# p reverse_int(100) #=> 1



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



