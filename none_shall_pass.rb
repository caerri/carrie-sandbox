# frozen_string_literal: true

# This project will be a password manager as part of the
# Conditionals in Ruby of GO RAILS.

# ALL CAPS indicates it's like a constant. Ruby will warn
# when trying to change it but it can be changed unless "FROZEN".
USERNAME = 'carrie@example.com'
PASSWORD = 'password'

#### Detour into the world of constants ####
# Here is an example of what the warning looks like.
# irb(main):003> EMAIL
# => "carrie@example.com"
# irb(main):004> EMAIL = "something_else"
# (irb):4: warning: already initialized constant EMAIL
# (irb):1: warning: previous definition of EMAIL was here
# => "something_else"
# irb(main):005> EMAIL
# => "something_else"
# but also with the example Password = "asdf" changing it
# resulted in the same warning.
#### End Detour ####

puts 'Welcome to None Shall Pass - A Password Manager'
puts 'Please sign in to continue'
print 'Enter email: '
user_email = gets.chomp # This is to remove the newline
print "You entered: #{user_email}" # character if printing instead of puts
