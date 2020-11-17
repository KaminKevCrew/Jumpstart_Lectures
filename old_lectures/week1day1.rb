############
# # Data Types
############

# # intro to puts
# p "Hello World"
# p 'Single quotes'
# p 5
# p 5 / 5
# p "Hello"

# p 1 + 2



# # numbers

# p 1 + 1
# p 2 + 2
# p 2 - 1
# p 4 * 12
# p 11.0 / 3
# p 123498234987 % 2 == 1


# p 12 % 4

# p (1 + 2) * 3 / 6.0 # order of operations
# PEMDAS



# # booleans

# # # consists of true and false
# true
# false
# p 1 + 4 == 6

# # == (check equality)
# p (2 * 4) + 1 == 3 * 3
# p 1.0 == 1

# # != (check inequality)
# p 4 != "hello"

# # < and > (greater than, less than)
# p 5 < 7

# # # <= and >= (less than or equal to)
# p !(2 >= 3)

# # ! ('bang' operator) NOT operator
# p !true # false
# p !false # true

# # && ('and' operator)

# p 5 == 4 && false
# p "string".length > 3 && 2 == 2 && 5 > 3

# # || ('or' operator)
# p false || 7 != 6 || 3 == 291

# # can also use 'or'
# p true or false

# grade = 80

# if grade >= 90
#   p "great job you got an a"
# else
#   p "what the heck why didn't ya study"
# end



############
# # Strings
############

# p 'Jumpstart is dope!'.upcase
# p "here is a double quote string"
# p "J" #characters char


# p 123.to_s

# p "hello" == "Hello"
# p 1123423.to_s # to_string

# p "3479827".to_i
# p "Not numbers".to_i

# p "1" + "2" + " " + "kevin is cool" # "12"
# first_name = "kevin"
# last_name = "kaminski"
# p first_name + " " + last_name + " is great"
# p first_name.length
# p "          ".length
# p "jumpstart is cool"[5]
# # everything in computer science starts at 0

# str_variable = "CAT"

# p str_variable[0] == "c" || str_variable[0] == "C"




# p "abcd"[0]
# p "abcd"[1]
# p "abcd"[2]
# p "abcd"[3]
# p "abcd"[4] == nil # ???????
# 58.length
# nil => "there is nothing here"

# p "jumpstart is great!"[-2]

# "abcd"["abcd".length-1]
# p "abcd"[-2]
# p "abcd"[-5]
# "ernie is here"[-1]
# p "jumpstart is cool"[0..3] # [0..3]
# p "jumpstart is cool"[0...3]
# p "jumpstart is cool"[5..-1]

# str = "hello"


# p "hello".reverse




# # # variables



# p aj_string = false

# p !aj_string 

# aj_string = "aj is teaching"

# aj_string += "!"

# aj_string *= 3

# p aj_string

# ajs_big_number = 100

# ajs_big_number += 1

# ajs_big_number *= 4

# p ajs_big_number




# p aj_boolean = nil


# # p my_variable
# my_variable = "kevin falls asleep"

# my_variable += "???"

# p my_variable

# num = 5
# p num
# num += 3
# # num = num + 3
# p num

# num = 7
# p num
# num -= 10
# p num
# temp = "#{5 + 5 / 7}!!!!!!"
# p temp


# # syntactic sugar for manipulating variables

# sum = 10

# sum += 1

# p sum

# p sum -= 1
# #  sum = sum - 1
# p sum *= 2
# # sum = sum * 2
# p sum /= 2
# # # sum = sum / 1

# p sum %= 3
# sum = sum % 3
# 11 % 3
# 2 

# sum = 121
# p sum.to_s
# p sum

# sum = sum.to_s
# p sum