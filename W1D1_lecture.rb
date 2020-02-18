############
# # Data Types
############

# # intro to puts
# p "Hello World"



# # numbers

# p 1 + 1
# p 2 + 2
# p 2 - 1
# p 4 * 1
# p 4 / 2
# p 11 / 3

# 1 + 2 * 3 / 6 # order of operations


# # booleans

# # # consists of true and false
# true
# false
# 1 + 4 == 5

# # == (check equality)
# p true == false

# # != (check inequality)
# p true != false

# # < and > (greater than, less than)
# p "cat" < "elephant"

# # <= and >= (less than or equal to)
# p 1 <= 1

# # ! ('bang' operator)
# p !true # false
# p !false # true
# p !( 2 != 4)

# # && ('and' operator)
# p "string".length > 5 && 2 == 2


# # || ('or' operator)
# p false || false || false || 2 == 5 || true

# # can also use 'or'
# p true or false


############
# # Strings
############

# p 'Jumpstart is dope!'
# p "App Academy is chill!!!1!"

# p "1" == 1

# p "2".to_i + "3".to_i
# p "1" + 1.to_s # "1" + "1"
# p "1" + "a" # "1a"
# p "kevin".length
# p "          ".length
# p "jumpstart is cool"[1]
# p "abcd"[0]
# p "abcd"[1]
# p "abcd"[2]
# p "abcd"[3]
# p "abcd"[4] # ???????

# "abcd"[-1] # "abcd"["abcd.length-1"]
# p "abcd"[-2]
# "ernie is here"[-1]
# p "jumpstart is cool"[1..2] # [0..3]
# p "jumpstart is cool"[0...4]
# p "jumpstart is cool"[-4..-1]


# # # variables
# my_variable = "kevin falls asleep"


# # p my_variable
# my_variable = my_variable + "!"
# my_variable += "???"
# p my_variable

# num = 7
# p num
# num -= 10
# p num
# temp = "#{5 + 5 / 7}!!!!!!"
# p temp


# # syntactic sugar for manipulating variables

# sum = 10

# p sum -= 1
# #  sum = sum - 1
# p sum *= 2
# # sum = sum * 2
# p sum /= 1
# # sum = sum / 1

# word = "banana"

# word = "i don't have a " + word

def second_largest(arr)
  largest = arr[0]
  second_largest = arr[0]
  arr.each do |num|
    if num > largest
      second_largest = largest
      largest = num
    elsif num > second_largest
      second_largest = num
    end
    
  end
  return second_largest
end

p second_largest([0, -2, 7, 4, 9])