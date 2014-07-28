require 'contact'
require 'rspec'

describe 'Contact' do
  it'initializes with a name parameter' do
    test_contact = Contact.new("Ronald McDonald")
    test_contact.should be_an_instance_of Contact
  end
end
