EMAIL = '123'
PASSWORD = '123'
PASSWORD_VAULT = {}

def welcome_message
    puts 'Welcome to None Shall Pass - A Password Manager'
end

def prompt_user_for_email
    puts 'Please sign in to continue'
    print 'Enter email: '
    gets.chomp
end

def verify_user_email(user_email)
    if user_email != EMAIL
        print "Invalid email"
        exit
    end
end

def prompt_user_for_password
    print "Enter Password: "
    gets.chomp
end

def verify_user_password(user_password)
    if user_password != PASSWORD
        puts "Invalid password"
        exit
    end
end

def greet_user(user_email)
    puts "Hello #{user_email}"
end

def menu_options
    puts "What would you like to do?"
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
        service_name = retrieve_service_name
        credentials = retrieve_service_credentials_for(service_name)
        if credentials != nil
            display_service_credentials(service_name, credentials)
        else
            puts "No such record, you crazy user."
        end
    when "3"
        exit_program
    else
        print "Please enter a valid method"
        menu_options
    end
end

def set_new_service_name
    print "What is the name of the new service?: "
    new_service = gets.chomp
    PASSWORD_VAULT[new_service.to_sym] = {}
    new_service
end

def set_username_for(service)
    print "Please enter the username for the new service: "
    new_service_username = gets.chomp
    PASSWORD_VAULT[service.to_sym][:username] = new_service_username\
end

def set_password_for(service)
    print "Please enter the password for the new service: "
    new_service_password = gets.chomp
    PASSWORD_VAULT[service.to_sym][:password] = new_service_password\
end

def retrieve_service_name
    puts "What service would you like to access? "
    gets.chomp
end

def retrieve_service_credentials_for(service_name)
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

welcome_message
user_email = prompt_user_for_email
verify_user_email(user_email)
user_password = prompt_user_for_password
verify_user_password(user_password)
greet_user(user_email)
20.times do
    menu_options
    user_selection = get_user_menu_selection
    handle_user_selection(user_selection)
end
    # display_service_credentials(new_service_username, new_service_password)
