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









# Are strings and integers "truthy"?

# if "Avatar: the Last Airbender"
#   p "will i be printed?"
# end













# Methods

# method anatomy:
#    def method_name(parameters)
#         code goes here...
#    end

# def square_5

# end







# p vs return
# if result == 25
#   p "yay!"
# end


# def square_number(num)

# end

# p square_number(8)

# def add_three_numbers(number_one, number_two, number_three)
  
# end



# p add_three_numbers(2, 4, 6)










#varibles made in the method do not exist outside of its scope:

# def sum_six
#   sum = 1 + 2 + 3 + 4 + 5 + 6

#   sum
# end

# p sum





# String methods and dot operator
# p "string".length
# p "string".upcase
# p "string".include?("s")

# p 5.odd?
# p 7.3.round
# p 7.3.ceil
# p 24.gcd(16)




# PRACTICE PROBLEMS!

# return true if word is even length

# def even_length?(word)
  
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
  
end

# p vindicated_word?("vendetta")
# p vindicated_word?("vox")
# p vindicated_word?("sasquatch")



