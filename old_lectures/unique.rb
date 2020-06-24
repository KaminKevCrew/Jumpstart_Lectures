# Given an array, return a new array with a single instance of each item

def unique_items(arr)
  # create a uniques array
  uniques = []
  # Iterate over every element in the array
  i = 0
  while i < arr.length
    # check if our item is already in uniques arr => tells us whether or not we have encountered that item before
    if !uniques.include?(arr[i])
      # if element is not in uniques, then shovel it in.
      uniques << arr[i] 
    end
    i += 1
  end
  return uniques
end

p unique_items([1, 1, 1, 2, 3, 4, 3, 3, 6, 5, 4, 4, 4, 9]) #=> [1, 2, 3, 4, 6, 5, 9]