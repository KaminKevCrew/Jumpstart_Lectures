# define a method that takes an array and returns the sum of all even entries.

def even_sum(arr)
  sum = 0
  idx = 0
  while idx < arr.length
    if arr[idx].even?
      sum += arr[idx]
    end
    idx += 1
  end
  return sum
end

p even_sum([6, 5, 3, 4]) #=> 10