# Homework

def average_of_three(num1, num2, num3)
  return (num1 + num2 + num3) / 3.0
end

# p average_of_three(5, 6, 8)








# a word is special if it starts with "c" OR has an even number of letters, but NOT both
# Write a method special_word? that takes in a string and returns true if the word is special

def special_word?(str)
  return (str[0].downcase == 'c') ^ (str.length.even?)
end

# puts special_word?("charisma") # false
# puts special_word?("cat") # true
# puts special_word?("even") # true
# puts special_word?("c") # true


# LOOPS

# while (conditional express is true)
#     do something
# end

# while true 
#   p "Infinite Loop"
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

# def count_to(number)
#   counter = 0
#   while counter <= number
#     p counter
#     counter += 1
#   end
# end

# count_to(165446876751321)



# def count_down(number)
#   while number >= 0
#     p number
#     number -= 1
#   end
# end

# num = 100

# count_down(num)





# string iteration loop
# str = "jumpstart is fun!"

# i = 0 # index variable
# while i < str.length
#   p str[i]
#   i += 1
# end







def count_a(str)
  count = 0
  idx = 0
  while idx < str.length
    if 'aA'.include?(str[idx]) # str[idx].downcase == 'a' char == 'a' || char == 'A'
      count += 1
    end
    idx += 1
  end
  return count
end

# p count_a("avatar aang") # 5
# p count_a("Avatar Aang") # 5
# p count_a("Abstemiously") # 1
# p count_a("Mississippi") # 0


# char == 'aA' #=> for this to be true, our char *must* be "aA"



## print all even numbers from 0 to the number inclusive, then return "finished!"
def print_evens(number)
  evens = 0
  while evens <= number
    p evens
    evens += 2
  end
  return finish
end

# print_evens(10)
# print_evens(39)






# # takes a str and replaces all vowels with "*"
def censor_words(str)
  censored = ""
  vowels = "aeiouAEIOU"
  idx = 0
  while idx < str.length
    if vowels.include?(str[idx]) 
      censored += '*'
    else 
      censored += str[idx]
    end
    idx += 1
  end
  return censored
end

# string = "This jumpstart is awesome!"

# p censor_words("Hello AJ!") # "H*ll* *J!"
# p censor_words("Abstemiously") # "*bst*m***sly"
# p censor_words("Gravity Falls") # "Gr*v*ty F*lls"
# p censor_words("Feck") # "F*ck"
# p censor_words("Shut the Front Door!") # "Sh*t th* Fr*nt D**r!"
# puts "\n\n"
# p string
# p censor_words(string) # "Sh*t th* Fr*nt D**r!"
# p string





# write a method is_prime? that takes in an number and returns true if
# the number is prime, false otherwise

def is_prime?(number)
  return false if number < 2
  return true if number == 2

  possible_fact = 2
  while possible_fact < number
    if number % possible_fact == 0
      return false
    end
    possible_fact += 1
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

def all_primes_to(number)
  test_num = 2
  return nil if number < 2
  while test_num <= number
    if is_prime?(test_num)
      p test_num
    end
    test_num += 1
  end
end

p all_primes_to(23) #2,3,5,7,11,13,17,19




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

# string = "orangutan"
            
# p string[4..6] #=> "gut"

# string[i..???] #=> grab the right substring

# search term has unlimited length => dynamically determine the required length of substring and the associated indices. 