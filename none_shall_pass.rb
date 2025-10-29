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

def welcome_message
    puts 'Welcome to None Shall Pass - A Password Manager'
end

def prompt_user_for_email
    puts 'Please sign in to continue'
    print 'Enter email: '
    puts "You entered: #{user_email}." # character if printing instead of puts
end

def verify_user_email(user_email)
    if user_email != EMAIL
        print "Invalid email"
        exit
    end
end

def prompt prompt_user_for_email
    print "Enter Password"
    gets.chomp
end

def verify_user_password(user_password)
    if user_password != PASSWORD
        puts "Invalid password"
        exit
    end
end

def greet user(user_email)
    puts "Hello #{user_email}"
    puts "What would you like to do?"
end

def menu_options)
    puts "1. Add new service credentials?"
    puts "2. Retrieve an existing service's credentials"
    puts "3. Exit"
end

def get_user_menu_selection
    gets.chomp
end

def handle_user_selection(user_selection)
    case user_selection # like switch"
    when "1"
        new_service = set_new_service_name
        set_username_for(new_service)
        set_password_for(new_service)
    when "2"
        requested_service_name = retrieve_service_name
        credentials = retrieve_service_credentials_for(requested_service_name)
        display_service_credentials(requested_service_name, credentials)
    else
        exit_program
    end
end

def set_new_service_name
    print "What is the name of the new service?: "
    new_service = gets.chomp
    PASSWORD_VAULT[new_service.to_sym] = {}
    new_service
end

def set_username_for(service)
    print "Please enter the username for the #{PASSWORD_VAULT} service: "
    new_service_username = gets.chomp
    PASSWORD_VAULT[service.to_sym][:username] = new_service_username
end

def set_password_for(service)
    print "Please enter the password for the #{PASSWORD_VAULT} service"
    new_service_password = gets.chomp
    PASSWORD_VAULT[service.to_sym][:password] = new_service_password
end

def retrieve_service_name
    puts "Please enter the name of the service you'd like to access credentials for: "
    gets.chomp
end

def retrieve_service_credentials_for_(service_name)
    PASSWORD_VAULT[service_name.to_sym]
end

def display_service_credentials(service_name, credentials)
    puts "The credentials for #{service_name} are: "
    credentials.each do |key, val|
        puts "#{key}: #{val}"
    end
end

def exit_program
    puts "Exiting program now."
    exit
end
# Notes from end of video: Ternary operator
# irb(main):047> number.odd? ? "odd" : "even"
# => "odd"
# irb(main):048> number = 2
# => 2
# irb(main):049> number.odd? ? "odd" : "even"
# => "even"
