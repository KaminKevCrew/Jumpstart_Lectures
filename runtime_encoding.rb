# define a method, runtime_encoding that takes an array, and 
# returns a string that corresponds to the array.
# 
# the array will have elements that alternate between strings and integers.
# your return string should consist of the string elements repeated as many
# times as the integer that follows specifies.

def runtime_encoding(arr)

end

p runtime_encoding(["dog", 3, "cat", 2, "mouse", 0]) 
#=> "dogdogdogcatcat"
p runtime_encoding(["hello", 4, "world", 2, "and", 1, "AJ", 5])
#=> "hellohellohellohelloworldworldandAJAJAJAJAJ"