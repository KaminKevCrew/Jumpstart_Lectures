#take a string and return a count of all 'a' or 'A'
def count_a(str)
  counter = 0
  i = 0
  while i < str.length
    word = str[i]
    if word == 'a' || word == 'A'
      counter += 1
    end
    i += 1
  end
  return counter
end

p count_a("avatar aang") # 5
p count_a("Avatar Aang") # 5
p count_a("Abstemiously") # 1
p count_a("Mississippi") # 0

# write a method is_prime? that takes in an number and returns true if
# the number is prime, false otherwise

def is_prime?(number)
  # base case #1, no numbers less than 2 are prime
  if number < 2
    return false
  end
  # base case #2, 2 is the only even prime
  if number == 2
    return true
  end
  # iterating through all possible numbers between 2...number
  i = 2
  while i < number
    if number % i == 0
      # we found an i that divides into num, therefore num is not prime
      return false
    end
    i += 1
  end
  # we found nothing that divides into number, therefore number is prime
  return true
end

p is_prime?(2) # true
p is_prime?(3) # true
p is_prime?(97) # true
p is_prime?(1) # false
p is_prime?(4) # false
p is_prime?(9) # false
p is_prime?(121) # false

# write a method all_primes_to that takes in a number and prints all primes
# up to that number
# HINT: use our is_prime helper method!

#   def all_primes_to(number)
#   end

# p all_primes_to(20) #2,3,5,7,11,13,17,19