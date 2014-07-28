require './lib/contact'
def main_menu
  system 'clear'
  puts "\n"
  puts "******************CONTACT LIST********************\n"
  puts "\nwhat would you like to do?\n\n enter N to add new contact
  \n enter C to access contact list\n"
  main_choice = gets.chomp.downcase
  if main_choice == 'n'
    puts 'What is the name of the user?'
    new_name = gets.chomp
    puts "What is the phone number of #{new_name} ?"
    new_phone = gets.chomp
    puts "What is the email address of #{new_name}?"
    new_email = gets.chomp
    puts "What is the mailing address of #{new_name}?"
    new_mail = gets. chomp
    new_contact = Contact.new(new_name)
    new_contact.add_number(new_phone)
    new_contact.add_email(new_email)
    new_contact.add_mailing(new_mail)
    main_menu
  end

  if main_choice == 'c'
    puts Contact.names
  end
end
main_menu


