Take a look at the following code:
name = 'Bob'                                 # the name variable is assigned the string 'Bob'
save_name = name # the save_name variable is assigned the name variable which is assigned the string 'Bob'
name = 'Alice'                               # the name variable is assigned the string 'Alice'
puts name, save_name     
# print to the screen the name varaible which is assinged the string 'Alice', the save_name variable which is assigned the
# name variable which is assigned the string 'Bob'. resulting in:          
# Alice
# Bob

What does this code print out? Think about it for a moment before continuing.        
# Alice
# Bob

you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:
name = 'Bob'                 # the name variable is assigned the 'Bob' string.
save_name = name            # the save_name variable is assigned the name variable which is assigned the 'Bob' string.
name.upcase!
puts name, save_name