name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

What does this print out? 

'BOB', 'Bob'


Can you explain these results?
name = 'Bob'    name is assigned 'Bob'
save_name = name    save_name is assigned name which is assigned 'Bob'
name.upcase!            name which is assigned 'Bob' is upcased which is 'BOB'
puts name, save_name   print to the screen 'BOB', 'Bob'