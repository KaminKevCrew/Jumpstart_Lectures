# Homework

# for(declare iterator; condition; value to increment by) {
#   run all code in the loop
#   automatically increment for based on value to increment by
# }

# while (condition) {
#   run code in while loop
#   after the code declare how you're going to increment
# }

# enumerables => really fancy loops 

def average_of_three(num1, num2, num3)
  (num1 + num2 + num3) / 3 / 2.0
end

# p average_of_three(5, 6, 8)








# a word is special if it starts with "c" OR has an even number of letters, but NOT both
# Write a method special_word? that takes in a string and returns true if the word is special

# def special_word?(str)
# end

# puts special_word?("charisma") # false
# puts special_word?("cat") # true
# puts special_word?("even") # true
# puts special_word?("c") # true


# LOOPS

# while (conditional express is true)
#     do something
#     declare increments
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
  until i >= number
    p i
    i += 1
  end
end

# count_to(10)



def count_down(number)
  while number > 0
    p number
    number -= 1
  end
end

# count_down(10)





# string iteration loop
# str = "jumpstart is fun!"

# i = 0 # index variable
# while i < str.length
#   p str[i]
#   i += 1
# end







def count_a(str)
  i = 0
  count = 0
  while i < str.length
    if str[i] == 'a' || str[i] == 'A'
      count += 1
    end
    i += 1
  end 
  count
end

# p count_a("avatar aang") # 5
# p count_a("Avatar Aang") # 5
# p count_a("Abstemiously") # 1
# p count_a("Mississippi") # 0






## print all even numbers from 0 to the number inclusive, then return "finished!"
def print_evens(number)
  i = 0
  while i <= number
    if i % 2 == 0
      p i
    end
    i += 1
  end
  return "finished!"
end

# p print_evens(10) # 0, 2, 4, 6, 8, 10
# p print_evens(39) # 0, 2, ... , 36, 38




# takes a str and replaces all vowels with "*"
def censor_words(str)
  i = 0
  while str < str.length
end

p censor_words("Hello AJ!") # "H*ll* *J!"
p censor_words("Abstemiously") # "*bst*m***sly"
p censor_words("Gravity Falls") # "Gr*v*ty F*lls"
p censor_words("Feck") # "F*ck"
p censor_words("Shut the Front Door!") # "Sh*t th* Fr*nt D**r!"






# write a method is_prime? that takes in an number and returns true if
# the number is prime, false otherwise

# def is_prime?(number)
# end

# p is_prime?(2) # true
# p is_prime?(3) # true
# p is_prime?(97) # true
# p is_prime?(1) # false
# p is_prime?(4) # false
# p is_prime?(9) # false
# p is_prime?(121) # false
# p is_prime?(43.5) # false



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