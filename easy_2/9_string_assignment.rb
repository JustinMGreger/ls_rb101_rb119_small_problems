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
# name is assigned Bob and save_name is assinged name then name is permenantly converted to upcase then print
# on a new line the value value assigned to name and save_name.