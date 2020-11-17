# Define a method, my_include? that checks for inclusion of a smaller string in a larger string

def my_include?(str, search)
  length = search.length - 1
  i = 0
  while i < str.length - length
    if str[i..i + length] == search
      return true
    end
    i += 1
  end
  return false
end

p my_include?("string", "s") # true
p my_include?("jumpstart", "tart") # true
p my_include?("Smash Bros", "ash") # true
p my_include?("Horus X10S", "rus") # true
p my_include?("qwerty is worse than dvorak", "than") # true


"jumpstart"[0..3] #=> "jump"