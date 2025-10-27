# frozen_string_literal: true

# This project will be a password manager as part of the
# Conditionals and control flow in Ruby of GO RAILS.

# ALL CAPS indicates it's like a constant. Ruby will warn
# when trying to change it but it can be changed unless "FROZEN".
EMAIL = 'a@b.c'
PASSWORD = '123'
# PASSWORD_VAULT = {}
PASSWORD_VAULT = {aws:
    { username: "Carrie",
        password: "some_cats_name",
        credential1: "stuff" }
}

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
user_email = gets.chomp # This is to remove the newline "\n"
puts "You entered: #{user_email}." # character if printing instead of puts

if user_email == EMAIL
    print "Enter Password: "
    user_password = gets.chomp
else
    puts "#{user_email} is an Invalid email."
    exit
end

unless user_password != PASSWORD
    puts "Hello #{user_email}"
    puts "What would you like to do?"
    puts "1. Add new service credentials?"
    puts "2. Retrieve an existing service's credentials"
    puts "3. Exit"
    print "Please type a selection: "
    user_selection = gets.chomp
else
    puts "Invalid Password."zq
    exit
end

case user_selection # like switch"
when "1"
    print "This will create new service credentials."
    print "What is the name of the new service?: "
    new_service = gets.chomp
    PASSWORD_VAULT[new_service] = {}

    print "Please enter the username for the #{PASSWORD_VAULT} service: "
    new_service_username = gets.chomp
    PASSWORD_VAULT[new_service]["username"] = new_service_username

    print "Please enter the password for the #{PASSWORD_VAULT} service"
    new_service_password = gets.chomp
    PASSWORD_VAULT[new_service]["password"] = new_service_password

    p PASSWORD_VAULT
when "2"
    puts "This will retrieve existing credentials."
    puts "Please enter the name of the service you'd like to access credentials for: "
    requested_service_name = gets.chomp
    credentials = PASSWORD_VAULT[requested_service_name.to_sym]
    puts "The credentials for #{requested_service_name} are: "
    credentials.each do |key, val|
        puts "#{key}: #{val}"
    end
else
    puts "Exiting program."
    exit
end

# Notes from end of video: Ternary operator
# irb(main):047> number.odd? ? "odd" : "even"
# => "odd"
# irb(main):048> number = 2
# => 2
# irb(main):049> number.odd? ? "odd" : "even"
# => "even"
