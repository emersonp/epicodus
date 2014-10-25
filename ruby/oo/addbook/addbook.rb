require './lib/contact.rb'

@book = []

def main_menu
    loop do
        puts 'Welcome to Address Book'
        puts "Press 'a' to add a contact."
        puts "Press # to view a contact."
        puts "Press 'x' to exit."
        menu_choice = gets.chomp
        if menu_choice == 'x'
            puts 'Good-bye!'
            exit
        elsif menu_choice == 'a'
            add_contact
        end
        print_contact_list
    end
end

def print_contact_list
    contact_num = 1
    puts 'Num\tName'
    @book.each do |contact|
        puts "#{contact_num}\t#{contact.full}"
        contact_num += 1
    end
    puts"\n\n"
end



def add_contact
    puts 'Please enter first name.'
    first = gets.chomp
    puts 'Please enter last name.'
    last = gets.chomp
    contact = Contact.new(first, last)
    puts 'Please enter phone number'
    num = gets.chomp
    contact.set_phone(num)
    puts 'Please enter street.'
    street = gets.chomp
    puts 'Please enter city.'
    city = gets.chomp
    puts 'Please enter state.'
    state = gets.chomp
    puts 'Please enter zip.'
    zip = gets.chomp
    contact.set_address(street, city, state, zip)
    @book << contact
end

main_menu
