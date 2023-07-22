# Take a look at the following code:
# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

# What does this code print out?
# Think about it for a moment before continuing.

# If you said that code printed
# Alice
# Bob

# you are 100% correct, and the answer should come as no surprise.
# Now, let's look at something a bit different:
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out?
# BOB
# BOB
# Can you explain these results?
# the name variable is assigned the Bob string value.
# the save_name variable is assinged the name variable.
# name is permenantly converted to upcase.
# this changed the value asssigned to the save_name variable.
# print on a new line the value value assigned to name and save_name.
# the name variable and the save_name variable are assigned the same underlying value which is the BOB string value.
