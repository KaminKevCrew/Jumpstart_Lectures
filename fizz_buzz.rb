# Define a method that takes an integer (max). Return an array of all the numbers from 0 to max (inclusive) that satisfy the requirements of fizz buzz (the number must be divisible by either 5 or 7, but not both.)

def fizz_buzz_arr(max)
  fizz_buzzed = []
  test_num = 2
  while test_num <= max
    if fizz_buzz?(test_num)
      fizz_buzzed << test_num
    end
    test_num += 1
  end
  p fizz_buzzed.length
  return fizz_buzzed
end

def fizz_buzz?(num)
  return (num % 2 == 0) ^ (num % 7 == 0)
end

def fizz_alt(max)
  (0..max).select {|num| (num.even?) ^ (num % 7 == 0)}
end

p fizz_buzz_arr(25) 
p fizz_alt(25) 