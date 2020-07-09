# Homework

def average_of_three(num1, num2, num3)
  # formula for avg = sum all numbers / count of numbers
  return (num1 + num2 + num3) / 3.0
end

# p average_of_three(5, 6, 8)








# a word is special if it starts with "c" OR has an even number of letters, but NOT both
# Write a method special_word? that takes in a string and returns true if the word is special

# def special_word?(str)
  # if "cC".include?(str[0]) && str.length.even?
  #   return false
  # elsif "cC".include?(str[0])
  #   return true
  # elsif str.length.even?
  #   return true
  # end
  # return ("cC".include?(str[0])) ^ (str.length.even?)
  
  # return ("cC".include?(str[0]) || str.length.even?) && !("cC".include?(str[0]) && str.length.even?)
# end

# puts special_word?("charisma") # false
# puts special_word?("cat") # true
# puts special_word?("even") # true
# puts special_word?("c") # true


# LOOPS

# while (conditional express is true)
#     do something
# end

# while true
  
# end

# # string[]: allows you to search for value
# best_game = "Super Smash Bros Melee"
# p best_game[0] # => "S"
# p best_game[6..10] # => "Smash"
# p best_game.length # => 22
# p best_game.include?("Q") # => false
# p best_game.include?("Melee") # => true
# p best_game.include?("Brawl") # => not in my house



# using +=

def count_to(number)
  i = 0
  while i < number
    p i
    i += 1
  end
  # p i
end

# count_to(10)



def count_down(number)
  i = number
  while i > -1
    p i
    i -= 1
  end
  p number
end

# count_down(100)





# string iteration loop
# str = "jumpstart is fun!"

# i = 0 # index variable
# while i < str.length
#   p str[i]
#   i += 1
# end







def count_a(str)
  # loop through str
  # check each char to see if it's "a" or "A"
  # if char is "a" or "A", increment some counting var
  # return counting var
  count = 0
  i = 0
  while i < str.length
    if "aA".include?(str[i]) # str[i] == 'a' || str[i] == 'A'
      count += 1
    end
    i += 1
  end
  return count
end

# p count_a("avatar aang") # 5
# p count_a("Avatar Aang") # 5
# p count_a("Abstemiously") # 1
# p count_a("Mississippi") # 0






## print all even numbers from 0 to the number inclusive, then return "finished!"
def print_evens(number)
  # go over every even number from 0 to number
  # I'm going to incrementing my while loop by 2 each time
  i = 0
  while i <= number
    p i
    i += 2
  end
  return "finished!"
end

# print_evens(10)
# print_evens(39)






# # takes a str and replaces all vowels with "*"
def censor_words(str)
  vowels = "aeiouAEIOU"
  censored = ""
  i = 0
  while i < str.length
    if vowels.include?(str[i])
      censored << "*"
    else
      censored << str[i]
    end
    i += 1
  end
  return censored
end

# p censor_words("Hello AJ!") # "H*ll* *J!"
# p censor_words("Abstemiously") # "*bst*m***sly"
# p censor_words("Gravity Falls") # "Gr*v*ty F*lls"
# p censor_words("Feck") # "F*ck"
# p censor_words("Shut the Front Door!") # "Sh*t th* Fr*nt D**r!"





# write a method is_prime? that takes in an number and returns true if
# the number is prime, false otherwise

def is_prime?(number)
  return false if number < 2
  
  i = 2
  while i < number
    if number % i == 0
      return false
    end
    i += 1
  end
  return true
end

# p is_prime?(2) # true
# p is_prime?(3) # true
# p is_prime?(97) # true
# p is_prime?(1) # false
# p is_prime?(4) # false
# p is_prime?(9) # false
# p is_prime?(121) # false



# write a method all_primes_to that takes in a number and prints all primes
# up to that number
# HINT: use our is_prime helper method!

#   def all_primes_to(number)
#   end

# p all_primes_to(20) #2,3,5,7,11,13,17,19






### implement your own include version of string.include?
# easy mode: you can assume search_term is one character
# challenge mode: search for more than one character
# my_include("chris","is") -> true

# def my_include?(string, search_term)

# end

# p my_include?("avatar aang","a") # true
# p my_include?("Fullmetal Alchemist","f") # false

# p my_include?("avatar aang","tar") # true
# p my_include?("teacher","cheat") # false
# p my_include?("manslaughter","laughter") # true