require './lib/contact'

system 'clear'
def main_menu
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
    system 'clear'
    main_menu
  elsif main_choice == 'c'
    system 'clear'
    Contact.all.each do |key,value|
      puts "#{key} \n---------- \n phone: #{value.number} \n email: #{value.email} \n address: #{value.mailing}"
    end
  else
    system 'clear'
    main_menu
  end
end
main_menu


