# Dictionaries

# Creating a blank dictionary
my_dict = {}

# Creating a dictionary with predetermined values
my_car = {
  "brand" : "Volvo",
  "model" : "V70 R",
  "year" : 1998,
  "color" : "silver",
  "body-type" : "wagon"
}

# How it looks when printed to console
# print(my_car)

# Grabbing a value through a known key
# print(my_car["model"])

# Modifying values in a dictionary
# my_car["model"] = "850 R"

# print(my_car)

# Iterate through all keys in a dictionary
# for key in my_car:
#   print(f"The key is {key}")
  
# Iterate through all values  
# for value in my_car.values():
#   print(f"The value is {value}")

# Iterate through both keys and values
# for key, value in my_car.items(): 
#   print(f"The key is {key} and the value is {value}. Neat.")

# Check for a specific key
# if "color" in my_car:
#   print("Yes, this car has a color attribute.")

# Find the number of entries in a dictionary
# print(len(my_car))

# my_car["extras"] = True
# my_car["AC"] = True
# my_car["heater"] = True

# print(my_car)

# Remove a specific key, value pair
# my_car.pop("extras")

# print(my_car)

# # # Remove the most recently added key, value pair
# my_car.popitem()

# print(my_car)

# # Don't do this:
# my_other_car = my_car

# my_car["brand"] = "Ferrari"

# # # Here's why:
# # print(my_car)
# # print(my_other_car)

# # # Do this instead:
# my_other_car = my_car.copy()

# my_car["brand"] = "Aston Martin"

# # # Now we have this:
# print(f"My car is an {my_car['brand']} and my other car is a {my_other_car['brand']}.")